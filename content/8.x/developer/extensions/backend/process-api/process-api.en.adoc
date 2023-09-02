---
title: "Introduction to the Process Api"
weight: 10
---

:imagesdir: /images/en/8.x/developer/extensions/backed-end/process-api/


== 1. Introduction

With SuiteCRM 8 and the new graphql api, there was the need to have a standard way to handle requests to the backend that are not strictly for retrieving or changing a module record fields/attributes.

This new mechanism is called `Process Api` and it is used for all kinds of actions that need to call the backend. Some examples:

* Delete
* Mass Update
* Print PDF
* Export
* Recover Password
* Backend Field Value Calculation
* ...

As you know, action requests many times do not fit in the usual get / update api for a record. Many times they even affect more than one record, need to send specific data, or other kinds of variations.

With the Process Api we've tried to provide a standard way to handle these scenarios, by adding support for:

* Authentication checking
* ACLs checking
* Data validation
* Process execution

== 2. Auto-registering of process handlers

All processes have a unique key and are registered in the `ProcessHandlerRegistry` by that unique key.

The unique key in each process is defined in the `getProcessType()` method.

All the process handlers are auto-registered they just need to implement the `ProcessHandlerInterface` and they should be picked up.

This auto-registering makes use of symfony's auto-wiring and autoconfiguration. The next subsections are going to explain the way this is setup.


=== 2.1 ProcessHandlerInterface auto-configuration

The file that contains the bulk of the symfony's configurations is `config/core_services.yaml`.

Within it, there is an autoconfiguration to tag all services that implement  the `App\Process\Service\ProcessHandlerInterface` with the `app.process.handler` tag.


[source,yaml]
----
services:
  # default configuration for services in *this* file
  _defaults:
    autowire: true      # Automatically injects dependencies in your services.
    autoconfigure: true # Automatically registers your services as commands, event subscribers, etc.
    public: false       # Allows optimizing the container by removing unused services.
    bind:

       ...

  _instanceof:
    App\Process\Service\ProcessHandlerInterface:
      tags: [ 'app.process.handler' ]

----

=== 2.1 Auto-wiring into the ProcessHandlerRegistry

Then using the configuration for the ProcessHandlerRegistry in the container, all services that have been tagged with the `app.process.handler` tag are injected in to the ProcessHandlerRegistry as the first argument of the constructor.

[source,yaml]
----
services:
  # default configuration for services in *this* file
  _defaults:
    autowire: true      # Automatically injects dependencies in your services.
    autoconfigure: true # Automatically registers your services as commands, event subscribers, etc.
    public: false       # Allows optimizing the container by removing unused services.

  ...

  App\Process\Service\ProcessHandlerRegistry:
    # inject all services tagged with app.process.handler as first argument
    # and use the value of the 'getProcessType' method to index the services
    arguments:
      - !tagged { tag: 'app.process.handler' }

----

Together with auto-loading and auto-wiring, we are able to tag and inject all classes that implement the `ProcessHandlerInterface` and are in a folder recognized by symfony.

== 3. Process Request GraphQL API

When an action is triggered, the angular front-end submits a process request through the graphql `createProcess` entity mutation.

[source]
----
type Process implements Node {
  id: ID!
  _id: String
  type: String
  status: String
  messages: Iterable
  async: Boolean
  options: Iterable
  data: Iterable
}
----

The graphql mutation is as follows:

[source]
----
mutation createProcess($input: createProcessInput!) {
  createProcess(input: $input) {
    process {
      _id
      status
      async
      type
      messages
      data
      __typename
    }
    clientMutationId
    __typename
  }
}
----

The following is an example of the inputs sent on the above request. This example is for the print-pdf action in Contacts:

[source,json]
----
{
    "input": {
        "type": "record-print-as-pdf",
        "options": {
            "action": "record-print-as-pdf",
            "module": "contacts",
            "id": "e4941b73-1c01-9016-3cdf-64181e7c4db4",
            "params": {
                "selectModal": {
                    "module": "AOS_PDF_Templates"
                },
                "modalRecord": {
                    "id": "7d1fd5f6-82a6-9f20-6e4f-643d64ed7be2",
                    "module": "pdf-templates",
                    "type": "AOS_PDF_Templates",
                    "attributes": {
                        "module_name": "AOS_PDF_Templates",
                        "object_name": "AOS_PDF_Templates",
                        "id": "7d1fd5f6-82a6-9f20-6e4f-643d64ed7be2",
                        "name": "test",
                        "date_entered": "2023-04-17 15:23:12",
                        "date_modified": "2023-04-17 15:23:12",
                        "modified_user_id": "1",
                        "modified_by_name": {
                            "user_name": "admin",
                            "id": "1"
                        },
                        "created_by": "1",
                        "created_by_name": {
                            "user_name": "admin",
                            "id": "1"
                        },
                        "description": "...",
                        "deleted": "",
                        "assigned_user_id": "1",
                        "assigned_user_name": {
                            "user_name": "admin",
                            "id": "1"
                        },
                        "active": "true",
                        "type": "Accounts",
                        "sample": "",
                        "insert_fields": "",
                        "pdfheader": "",
                        "pdffooter": "",
                        "margin_left": "15",
                        "margin_right": "15",
                        "margin_top": "16",
                        "margin_bottom": "16",
                        "margin_header": "9",
                        "margin_footer": "9",
                        "page_size": "A4",
                        "orientation": "Portrait"
                    },
                    "acls": [
                        "list",
                        "edit",
                        "view",
                        "delete",
                        "export",
                        "import"
                    ]
                }
            }
        }
    }
}
----

Here is another example for the `delete` action:

[source,json]
----
{
    "input": {
        "type": "record-delete",
        "options": {
            "action": "record-delete",
            "module": "contacts",
            "id": "e4941b73-1c01-9016-3cdf-64181e7c4db4",
            "params": {
                "displayConfirmation": true,
                "confirmationLabel": "NTC_DELETE_CONFIRMATION"
            }
        }
    }
}
----

From the two examples above we can identify that there are some properties that are sent on most requests:

**type**
The process type, that is going to be used to trigger the corresponding handler on the backend.

**options.module**
The `module` within the `options` is not mandatory, but most process requests send it.

**options.action**
The `actions` within the `options` is not mandatory, but most process requests send it.

**options.params**
Sent on almost all request, but each request will contain inputs specific to the process being called.

== 3. Process Request Backend Handling

There is a single entrypoint for all the process requests named ProcessDataPersister, which can be found on `core/backend/Process/DataPersister/ProcessDataPersister.php`

For all requests it will (as depicted on the following code snippet taken from core):

. Get the matching `ProcessHandler` from the `ProcessHandlerRegistry`
. Check if the required authentication level. I.e. if it requires a logged-in user and if the current user is an authenticated user
. Validate the request data
. Check SuiteCRM acls for the process.
. Do the needed configurations to the process
. Run
. Return the response


[source,php]
----
    public function persist($process, array $context = []): Process
    {
        $processHandler = $this->registry->get($process->getType());

        $this->checkAuthentication($processHandler);

        $processHandler->validate($process);

        $hasAccess = $this->checkACLAccess($processHandler, $process);

        $processHandler->configure($process);

        if (!$hasAccess) {
            $process->setMessages(['LBL_ACCESS_DENIED']);
            $process->setStatus('error');

            return $process;
        }

        if ($process->getAsync() === true) {
            // Store process for background processing
            // Not supported yet
        } else {
            $processHandler->run($process);
        }

        return $process;
    }
----

== 4. Adding a Process Handler

With this information you now have base knowledge about the process api, which should allow you to understand the base flow of a request.

The next step is to understand how to add a new process handler. Check the link:../process-handler[Adding a Process Handler] guide.
