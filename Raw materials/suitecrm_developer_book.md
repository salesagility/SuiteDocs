<span id="title_page.xhtml"></span>

<div id="title_page.xhtml#cover-image">
![SuiteCRM for Developers](images/title_page.jpg "SuiteCRM for Developers")

</div>
<span id="verso_page.xhtml"></span>

SuiteCRM for Developers
-----------------------

### Getting started with developing for SuiteCRM

 

#### Jim Mackin

 

This book is for sale at <http://leanpub.com/suitecrmfordevelopers>

This version was published on 2015-05-22

![publisher's logo](images/leanpub-logo.png "publisher's logo")

-      \*   \*   \*   \*

This is a [Leanpub](http://leanpub.com) book. Leanpub empowers authors and publishers with the Lean Publishing process. [Lean Publishing](http://leanpub.com/manifesto) is the act of publishing an in-progress ebook using lightweight tools and many iterations to get reader feedback, pivot until you have the right book and build traction once you do.

-      \*   \*   \*   \*

<div>
© 2015 Jim Mackin

</div>
<span id="toc.xhtml"></span>

<div>
Table of Contents
-----------------

-   [<span class="section-number">1. </span>Introduction](#chap00.xhtml#leanpub-auto-introduction "wikilink")
    -   [What is SuiteCRM](#chap00.xhtml#leanpub-auto-what-is-suitecrm "wikilink")
    -   [This book](#chap00.xhtml#leanpub-auto-this-book "wikilink")
    -   [Reading this book](#chap00.xhtml#leanpub-auto-reading-this-book "wikilink")
    -   [Setting up SuiteCRM](#chap00.xhtml#leanpub-auto-setting-up-suitecrm "wikilink")
    -   [Initial Tweaks](#chap00.xhtml#leanpub-auto-initial-tweaks "wikilink")
-   [<span class="section-number">2. </span>SuiteCRM Directory Structure](#chap01.xhtml#leanpub-auto-suitecrm-directory-structure "wikilink")
-   [<span class="section-number">3. </span>Working with Beans](#chap02.xhtml#working-with-beans-chapter "wikilink")
    -   [BeanFactory](#chap02.xhtml#leanpub-auto-beanfactory "wikilink")
    -   [SugarBean](#chap02.xhtml#leanpub-auto-sugarbean "wikilink")
    -   [Searching for beans](#chap02.xhtml#leanpub-auto-searching-for-beans "wikilink")
    -   [Accessing fields](#chap02.xhtml#leanpub-auto-accessing-fields "wikilink")
    -   [Related beans](#chap02.xhtml#leanpub-auto-related-beans "wikilink")
-   [<span class="section-number">4. </span>Vardefs](#chap03.xhtml#vardefs-chapter "wikilink")
    -   [What are Vardefs](#chap03.xhtml#leanpub-auto-what-are-vardefs "wikilink")
    -   [Defining Vardefs](#chap03.xhtml#leanpub-auto-defining-vardefs "wikilink")
-   [<span class="section-number">5. </span>Views](#chap04.xhtml#leanpub-auto-views "wikilink")
    -   [Location](#chap04.xhtml#leanpub-auto-location "wikilink")
    -   [Customising](#chap04.xhtml#leanpub-auto-customising "wikilink")
-   [<span class="section-number">6. </span>Metadata](#chap05.xhtml#metadata-chapter "wikilink")
    -   [Intro](#chap05.xhtml#leanpub-auto-intro "wikilink")
    -   [Location](#chap05.xhtml#leanpub-auto-location-1 "wikilink")
    -   [Customising](#chap05.xhtml#leanpub-auto-customising-1 "wikilink")
    -   [Different metadata](#chap05.xhtml#leanpub-auto-different-metadata "wikilink")
-   [<span class="section-number">7. </span>Controllers](#chap06.xhtml#leanpub-auto-controllers "wikilink")
    -   [Customising controllers](#chap06.xhtml#leanpub-auto-customising-controllers "wikilink")
-   [<span class="section-number">8. </span>Entry Points](#chap07.xhtml#entry-point-chapter "wikilink")
    -   [Creating an entry point](#chap07.xhtml#leanpub-auto-creating-an-entry-point "wikilink")
-   [<span class="section-number">9. </span>Language Strings](#chap08.xhtml#language-chapter "wikilink")
    -   [Module Strings](#chap08.xhtml#leanpub-auto-module-strings "wikilink")
    -   [Application Strings](#chap08.xhtml#leanpub-auto-application-strings "wikilink")
    -   [Application List Strings](#chap08.xhtml#leanpub-auto-application-list-strings "wikilink")
    -   [Why and when to customise](#chap08.xhtml#leanpub-auto-why-and-when-to-customise "wikilink")
    -   [Usage](#chap08.xhtml#leanpub-auto-usage "wikilink")
-   [<span class="section-number">10. </span>Config](#chap09.xhtml#config-chapter "wikilink")
    -   [The config files](#chap09.xhtml#leanpub-auto-the-config-files "wikilink")
    -   [Using config options](#chap09.xhtml#leanpub-auto-using-config-options "wikilink")
-   [<span class="section-number">11. </span>Logging](#chap10.xhtml#logging-chapter "wikilink")
    -   [Logging messages](#chap10.xhtml#leanpub-auto-logging-messages "wikilink")
    -   [Logging output](#chap10.xhtml#leanpub-auto-logging-output "wikilink")
    -   [Log levels](#chap10.xhtml#leanpub-auto-log-levels "wikilink")
-   [<span class="section-number">12. </span>Logic Hooks](#chap11.xhtml#logic-hooks-chapter "wikilink")
    -   [Intro](#chap11.xhtml#leanpub-auto-intro-1 "wikilink")
    -   [Types](#chap11.xhtml#leanpub-auto-types "wikilink")
    -   [Application Hooks](#chap11.xhtml#leanpub-auto-application-hooks "wikilink")
    -   [User Hooks](#chap11.xhtml#leanpub-auto-user-hooks "wikilink")
    -   [Module Hooks](#chap11.xhtml#leanpub-auto-module-hooks "wikilink")
    -   [Job Queue Hooks](#chap11.xhtml#leanpub-auto-job-queue-hooks "wikilink")
    -   [Implementing](#chap11.xhtml#leanpub-auto-implementing "wikilink")
    -   [Tips](#chap11.xhtml#leanpub-auto-tips "wikilink")
-   [<span class="section-number">13. </span>Scheduled Tasks](#chap12.xhtml#scheduled-tasks-chapter "wikilink")
    -   [Intro](#chap12.xhtml#leanpub-auto-intro-2 "wikilink")
    -   [Scheduler](#chap12.xhtml#leanpub-auto-scheduler "wikilink")
    -   [Job Queue](#chap12.xhtml#leanpub-auto-job-queue "wikilink")
    -   [Debugging](#chap12.xhtml#leanpub-auto-debugging "wikilink")
-   [<span class="section-number">14. </span>Extension Framework](#chap13.xhtml#extensions-chapter "wikilink")
    -   [Introduction](#chap13.xhtml#leanpub-auto-introduction-1 "wikilink")
    -   [Standard Extensions](#chap13.xhtml#leanpub-auto-standard-extensions "wikilink")
    -   [Custom Extensions](#chap13.xhtml#leanpub-auto-custom-extensions "wikilink")
-   [<span class="section-number">15. </span>Module Installer](#chap14.xhtml#module-installer-chapter "wikilink")
    -   [manifest.php](#chap14.xhtml#leanpub-auto-manifestphp "wikilink")
    -   [Types](#chap14.xhtml#leanpub-auto-types-1 "wikilink")
-   [<span class="section-number">16. </span>API](#chap15.xhtml#leanpub-auto-api "wikilink")
    -   [Using the API](#chap15.xhtml#leanpub-auto-using-the-api "wikilink")
    -   [Adding custom API methods](#chap15.xhtml#leanpub-auto-adding-custom-api-methods "wikilink")
-   [<span class="section-number">17. </span>Best Practices](#chap16.xhtml#leanpub-auto-best-practices "wikilink")
    -   [Development instances](#chap16.xhtml#leanpub-auto-development-instances "wikilink")
    -   [Version control](#chap16.xhtml#leanpub-auto-version-control "wikilink")
    -   [Backup](#chap16.xhtml#leanpub-auto-backup "wikilink")
    -   [Be upgrade safe](#chap16.xhtml#leanpub-auto-be-upgrade-safe "wikilink")
    -   [Use appropriate log levels](#chap16.xhtml#leanpub-auto-use-appropriate-log-levels "wikilink")
    -   [Long running logic hooks](#chap16.xhtml#leanpub-auto-long-running-logic-hooks "wikilink")
    -   [Minimise SQL](#chap16.xhtml#leanpub-auto-minimise-sql "wikilink")
    -   [SQL Use](#chap16.xhtml#leanpub-auto-sql-use "wikilink")
    -   [Entry check](#chap16.xhtml#leanpub-auto-entry-check "wikilink")
    -   [Redirect after post](#chap16.xhtml#leanpub-auto-redirect-after-post "wikilink")
-   [<span class="section-number">18. </span>Performance Tweaks](#chap17.xhtml#leanpub-auto-performance-tweaks "wikilink")
    -   [Server](#chap17.xhtml#leanpub-auto-server "wikilink")
    -   [Indexes](#chap17.xhtml#leanpub-auto-indexes "wikilink")
    -   [Config Changes](#chap17.xhtml#leanpub-auto-config-changes "wikilink")
-   [<span class="section-number">19. </span>Further Resources](#chap18.xhtml#leanpub-auto-further-resources "wikilink")
    -   [SuiteCRM Website](#chap18.xhtml#leanpub-auto-suitecrm-website "wikilink")
    -   [External SuiteCRM Resources](#chap18.xhtml#leanpub-auto-external-suitecrm-resources "wikilink")
    -   [SugarCRM Resources](#chap18.xhtml#leanpub-auto-sugarcrm-resources "wikilink")
    -   [Technical Links](#chap18.xhtml#leanpub-auto-technical-links "wikilink")
    -   [Other Links](#chap18.xhtml#leanpub-auto-other-links "wikilink")
-   [<span class="section-number">20. </span>Appendix A - Code Examples](#chap19.xhtml#appendix-a "wikilink")
    -   [Metadata](#chap19.xhtml#leanpub-auto-metadata "wikilink")
    -   [Module Installer](#chap19.xhtml#leanpub-auto-module-installer "wikilink")
-   [<span class="section-number">21. </span>Appendix B - API Methods](#chap20.xhtml#appendix-b "wikilink")
    -   [Methods](#chap20.xhtml#leanpub-auto-methods-1 "wikilink")

</div>
<span id="chap00.xhtml"></span>

<div>
<span class="section-number">1. </span>Introduction
---------------------------------------------------

### What is SuiteCRM

The story of [SuiteCRM](https://www.suitecrm.com) starts with SugarCRM. SugarCRM was founded in 2004 and consisted of an open source version (called Community Edition) and various paid for versions. However trouble started brewing when it appeared that SugarCRM would not be releasing a Community Edition of SugarCRM 7 and would be providing limited, if any, updates to the Community Edition.

Enter SuiteCRM. SalesAgility forked Community Edition to create SuiteCRM and also added various open source plugins to add improved functionality.

### This book

This book is intended for developers who are familiar (or at least acquainted) with using SuiteCRM but want to perform their own customisations. SuiteCRM is a large and mature piece of software so it is impractical for a book to cover all aspects of the software. I’ve tried to add the most important parts which should allow you to make the changes you need in 99% of situations. There is a further resources chapter at the end of this book to help out in those 1% of cases. With that being said if you feel there is anything important I have left out (or worse, anything incorrect in the book) please let me know. I can be contacted at [JSMackin.co.uk](http://www.jsmackin.co.uk).

### Reading this book

Each chapter in this book is intended to be self contained so the reader can jump to interesting chapters. Where there is some overlap this is usually indicated with links to the relevant chapters.

Some parts of this book may refer to file paths or other parts of code that can have a variable value, for example controller names contain the module name or a file with an arbitrary name. In this case these will be marked in the form `<TheModuleName>`, `<TheFileName>` or something else suitable. In these cases you can substitute something appropriate (such as `Accounts` or `MyNewFile`).

### Setting up SuiteCRM

In this book we’ll be using SuiteCRM v7.1.5 which is the latest at time of writing. For up to date versions of the installation instructions see the SuiteCRM wiki at [suitecrm.com/wiki/index.php/Installation](https://suitecrm.com/wiki/index.php/Installation).

#### Website

The SuiteCRM installer can be found at [SuiteCRM.com](https://suitecrm.com/). I would recommend SuiteCRM MAX as I prefer to start with a full interface and customise it as needed.

#### GitHub

SuiteCRM is also available on [GitHub](http://github.com) at [github.com/salesagility/SuiteCRM](https://github.com/salesagility/SuiteCRM). Each SuiteCRM version is tagged so you can easily grab the version you need.

### Initial Tweaks

After the initial install there are a few tweaks you may want to make on an instance you are developing on. These changes should improve your development flow and productivity as well as help identify issues if they occur.

#### Developer Mode

SuiteCRM will cache various files that it processes, such as Smarty templates. Developer mode will turn off some of the caching so that changes to files will be seen immediately (though this isn’t always the case - as is the case with [extensions](#chap13.xhtml#extensions-chapter "wikilink")). This can be enabled either through the config file or via the General settings page inside admin.

#### Log Level

The default log level of SuiteCRM is `fatal`. This is a good default for production instances but you may want to increase the log level to `info` or `debug`. This will make the log output more verbose so, should anything go wrong, you’ll have something to refer to. See the [chapter on logging](#chap10.xhtml#logging-chapter "wikilink") for more information.

#### Display errors

You’ll also want to turn off display errors. Unfortunately at the moment SuiteCRM has various notices and warnings out of the box. With `display_errors` on this can sometimes cause AJAX pages and the link to break.

With this being said you should be checking the PHP error logs or selectively enabling
`display_errors` to ensure that the code you are creating is not creating additional notices, warnings or errors.

#### XDebug

[XDebug](http://xdebug.org) is a PHP extension which provides profiling and debugging capabilities to PHP. This can massively improve developer productivity by simplifying development and, particularly, tracking down any issues. See the XDebug site for information on XDebug.

</div>
<span id="chap01.xhtml"></span>

<div>
<span class="section-number">2. </span>SuiteCRM Directory Structure
-------------------------------------------------------------------

`cache`  
Contains cache files used by SuiteCRM including compiled smarty templates, grouped vardefs, minified and grouped JavaScript. Some modules and custom modules may also store (temporary) module specific info here.

`custom`  
Contains user and developer customisations to SuiteCRM. Also contains some SuiteCRM code to maintain compatibility with SugarCRM. However this is likely to change in the future.

`data`  
Stores the classes and files used to deal with SugarBeans and their relationships.

`examples`  
Contains a few basic examples of lead capture and API usage. However these are very outdated.

`include`  
Contains the bulk of non module and non data SuiteCRM code.

`install`  
Code used by the SuiteCRM installer.

`jssource`  
The `jssource` folder contains the unminified source of some of the JavaScript files used within SuiteCRM.

`metadata`  
Stores relationship metadata for the various stock SuiteCRM modules. This should not be confused with module metadata which contains information on view, dashlet and search definitions.

`mobile`  
Stores code for the [QuickCRM](http://www.quickcrm.fr) mobile app.

`ModuleInstall`  
Code for the module installer.

`modules`  
Contains the code for any stock or custom SuiteCRM modules.

`service`  
Code for the SuiteCRM Soap and REST APIs.

`themes`  
Code, data and images for the bundled SuiteCRM theme.

`upload`  
The `upload` folder contains documents that have been uploaded to SuiteCRM. The names of the files comes from the ID of the matching Document Revision/Note. `upload`/`upgrades` will also contain various upgrade files and the packages of installed modules.

`log4php`, `soap`, `XTemplate`, `Zend`  
Source code for various libraries used by SuiteCRM some of which are deprecated.

</div>
<span id="chap02.xhtml"></span>

<div>
<span class="section-number">3. </span>Working with Beans
---------------------------------------------------------

Beans are the Model in SuiteCRM’s MVC (Model View Controller) architecture. They allow retrieving data from the database as objects and allow persisting and editing records. This section will go over the various ways of working with beans.

### BeanFactory

The BeanFactory allows dynamically loading bean instances or creating new records. For example to create a new bean you can use:

<div class="code-block">
Example 3.1: Creating a new Bean using the BeanFactory

------------------------------------------------------------------------

<div class="highlight">
    1 $bean = BeanFactory::newBean('&lt;TheModule&gt;');
    2 //For example a new account bean:
    3 $accountBean = BeanFactory::newBean('Accounts');

</div>

------------------------------------------------------------------------

</div>
Retrieving an existing bean can be achieved in a similar manner:

<div class="code-block">
Example 3.2: Retrieving a bean with the BeanFactory

------------------------------------------------------------------------

<div class="highlight">
    1 $bean = BeanFactory::getBean('&lt;TheModule&gt;', $beanId);
    2 //For example to retrieve an account id
    3 $bean = BeanFactory::getBean('Accounts', $beanId);

</div>

------------------------------------------------------------------------

</div>
`getBean` will return an unpopulated bean object if `$beanId` is not supplied or if there’s no such record. Retrieving an unpopulated bean can be useful if you wish to use the static methods of the bean (for example see the Searching for Beans section). To deliberately retrieve an unpopulated bean you can omit the second argument of the `getBean` call. I.e.

<div class="code-block">
Example 3.3: Retrieving an unpopulated bean

------------------------------------------------------------------------

<div class="highlight">
    1 $bean = BeanFactory::getBean('&lt;TheModule&gt;');

</div>

------------------------------------------------------------------------

</div>
<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><div class="figure">
<img src="images/leanpub_warning.png" title="warning" alt="warning" width="50" />
<p class="caption">warning</p>
</div></td>
<td><p><code>BeanFactory::getBean</code> caches ten results. This can cause odd behaviour if you call <code>getBean</code> again and get a cached copy. Any calls that return a cached copy will return the same instance. This means changes to one of the beans will be reflected in all the results.</p></td>
</tr>
</tbody>
</table>

Using BeanFactory ensures that the bean is correctly set up and the necessary files are included etc.

### SugarBean

The SugarBean is the parent bean class and all beans in SuiteCRM extend this class. It provides various ways of retrieving and interacting with records.

### Searching for beans

The following examples show how to search for beans using a bean class. The examples provided assume that an account bean is available names $accountBean. This may have been retrieved using the getBean call mentioned in the BeanFactory section e.g.

<div class="code-block">
Example 3.4: Retrieving an unpopulated account bean

------------------------------------------------------------------------

<div class="highlight">
    $accountBean = BeanFactory::getBean('Accounts');

</div>

------------------------------------------------------------------------

</div>
#### get\_list

The get\_list method allows getting a list of matching beans and allows paginating the results.

<div class="code-block">
Example 3.5: get\_list method signature

------------------------------------------------------------------------

<div class="highlight">
    1 get_list(
    2     $order_by = &quot;&quot;,
    3     $where = &quot;&quot;,
    4     $row_offset = 0,
    5     $limit=-1,
    6     $max=-1,
    7     $show_deleted = 0)

</div>

------------------------------------------------------------------------

</div>
$order\_by  
Controls the ordering of the returned list. `$order_by` is specified as a string that will be used in the SQL ORDER BY clause e.g. to sort by name you can simply pass `name`, to sort by date\_entered descending use `date_entered DESC`. You can also sort by multiple fields. For example sorting by date\_modified and id descending `date_modified, id DESC`.

$where  
Allows filtering the results using an SQL WHERE clause. `$where` should be a string containing the SQL conditions. For example in the contacts module searching for contacts with specific first names we might use `contacts.first_name='Jim'`. Note that we specify the table, the query may end up joining onto other tables so we want to ensure that there is no ambiguity in which field we target.

$row\_offset  
The row to start from. Can be used to paginate the results.

$limit  
The maximum number of records to be returned by the query. -1 means no limit.

$max  
The maximum number of entries to be returned per page. -1 means the default max (usually 20).

$show\_deleted  
Whether to include deleted results.

##### Results

get\_list will return an array. This will contain the paging information and will also contain the list of beans. This array will contain the following keys:

list  
An array of the beans returned by the list query

row\_count  
The total number of rows in the result

next\_offset  
The offset to be used for the next page or -1 if there are no further pages.

previous\_offset  
The offset to be used for the previous page or -1 if this is the first page.

current\_offset  
The offset used for the current results.

##### Example

Let’s look at a concrete example. We will return the third page of all accounts with the industry `Media` using 10 as a page size and ordered by name.

<div class="code-block">
Example 3.6: Example get\_list call

------------------------------------------------------------------------

<div class="highlight">
     1 $beanList = $accountBean-&gt;get_list(
     2                                 //Order by the accounts name
     3                                 'name',
     4                                 //Only accounts with industry 'Media'
     5                                 &quot;accounts.industry = 'Media'&quot;,
     6                                 //Start with the 30th record (third page)
     7                                 30,
     8                                 //No limit - will default to max page size
     9                                 -1,
    10                                 //10 items per page
    11                                 10);

</div>

------------------------------------------------------------------------

</div>
This will return:

<div class="code-block">
Example 3.7: Example get\_list results

------------------------------------------------------------------------

<div class="highlight">
     1 Array
     2 (
     3     //Snipped for brevity - the list of Account SugarBeans
     4     [list] =&gt; Array()
     5     //The total number of results
     6     [row_count] =&gt; 36
     7     //This is the last page so the next offset is -1
     8     [next_offset] =&gt; -1
     9     //Previous page offset
    10     [previous_offset] =&gt; 20
    11     //The offset used for these results
    12     [current_offset] =&gt; 30
    13 )

</div>

------------------------------------------------------------------------

</div>
#### get\_full\_list

`get_list` is useful when you need paginated results. However if you are just interested in getting a list of all matching beans you can use `get_full_list`. The `get_full_list` method signature looks like this:

<div class="code-block">
Example 3.8: get\_full\_list method signature

------------------------------------------------------------------------

<div class="highlight">
    1 get_full_list(
    2             $order_by = &quot;&quot;,
    3             $where = &quot;&quot;,
    4             $check_dates=false,
    5             $show_deleted = 0

</div>

------------------------------------------------------------------------

</div>
These arguments are identical to their usage in `get_list` the only difference is the `$check_dates` argument. This is used to indicate whether the date fields should be converted to their display values (i.e. converted to the users date format).

##### Results

The get\_full\_list call simply returns an array of the matching beans

##### Example

Let’s rework our `get_list` example to get the full list of matching accounts:

<div class="code-block">
Example 3.9: Example get\_full\_list call

------------------------------------------------------------------------

<div class="highlight">
    1 $beanList = $accountBean-&gt;get_full_list(
    2                                 //Order by the accounts name
    3                                 'name',
    4                                 //Only accounts with industry 'Media'
    5                                 &quot;accounts.industry = 'Media'&quot;
    6                                 );

</div>

------------------------------------------------------------------------

</div>
#### retrieve\_by\_string\_fields

Sometimes you only want to retrieve one row but may not have the id of the record. `retrieve_by_string_fields` allows retrieving a single record based on matching string fields.

<div class="code-block">
Example 3.10: retrieve\_by\_string\_fields method signature

------------------------------------------------------------------------

<div class="highlight">
    1 retrieve_by_string_fields(
    2                           $fields_array,
    3                           $encode=true,
    4                           $deleted=true)

</div>

------------------------------------------------------------------------

</div>
$fields\_array  
An array of field names to the desired value.

$encode  
Whether or not the results should be HTML encoded.

$deleted  
Whether or not to add the deleted filter.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><div class="figure">
<img src="images/leanpub_warning.png" title="warning" alt="warning" width="50" />
<p class="caption">warning</p>
</div></td>
<td><p>Note here that, confusingly, the deleted flag works differently to the other methods we have looked at. It flags whether or not we should filter out deleted results. So if true is passed then the deleted results will <em>not</em> be included.</p></td>
</tr>
</tbody>
</table>

##### Results

retrieve\_by\_string\_fields returns a single bean as it’s result or null if there was no matching bean.

##### Example

For example to retrieve the account with name `Tortoise Corp` and account\_type `Customer` we could use the following:

<div class="code-block">
Example 3.11: Example retrieve\_by\_string\_fields call

------------------------------------------------------------------------

<div class="highlight">
    1 $beanList = $accountBean-&gt;retrieve_by_string_fields(
    2                                 array(
    3                                   'name' =&gt; 'Tortoise Corp',
    4                                   'account_type' =&gt; 'Customer'
    5                                 )
    6                               );

</div>

------------------------------------------------------------------------

</div>
### Accessing fields

If you have used one of the above methods we now have a bean record. This bean represents the record that we have retrieved. We can access the fields of that record by simply accessing properties on the bean just like any other PHP object. Similarly we can use property access to set the values of beans. Some examples are as follows:

<div class="code-block">
Example 3.12: Accessing fields examples

------------------------------------------------------------------------

<div class="highlight">
     1 //Get the Name field on account bean
     2 $accountBean-&gt;name;
     3 
     4 //Get the Meeting start date
     5 $meetingBean-&gt;date_start;
     6 
     7 //Get a custom field on a case
     8 $caseBean-&gt;third_party_code_c;
     9 
    10 //Set the name of a case
    11 $caseBean-&gt;name = 'New Case name';
    12 
    13 //Set the billing address post code of an account
    14 $accountBean-&gt;billing_address_postalcode = '12345';

</div>

------------------------------------------------------------------------

</div>
When changes are made to a bean instance they are not immediately persisted. We can save the changes to the database with a call to the beans `save` method. Likewise a call to `save` on a brand new bean will add that record to the database:

<div class="code-block">
Example 3.13: Persisting bean changes

------------------------------------------------------------------------

<div class="highlight">
     1 //Get the Name field on account bean
     2 $accountBean-&gt;name = 'New account name';
     3 //Set the billing address post code of an account
     4 $accountBean-&gt;billing_address_postalcode = '12345';
     5 //Save both changes.
     6 $accountBean-&gt;save();
     7 
     8 //Create a new case (see the BeanFactory section)
     9 $caseBean = BeanFactory::newBean('Cases');
    10 //Give it a name and save
    11 $caseBean-&gt;name = 'New Case name';
    12 $caseBean-&gt;save();

</div>

------------------------------------------------------------------------

</div>
<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><div class="figure">
<img src="images/leanpub_info-circle.png" title="information" alt="information" width="50" />
<p class="caption">information</p>
</div></td>
<td><p>Whether to save or update a bean is decided by checking the <code>id</code> field of the bean. If <code>id</code> is set then SuiteCRM will attempt to perform an update. If there is no <code>id</code> then one will be generated and a new record will be inserted into the database. If for some reason you have supplied an <code>id</code> but the record is new (perhaps in a custom import script) then you can set <code>new_with_id</code> to true on the bean to let SuiteCRM know that this record is new.</p></td>
</tr>
</tbody>
</table>

### Related beans

We have seen how to save single records but, in a CRM system, relationships between records are as important as the records themselves. For example an account may have a list of cases associated with it, a contact will have an account that it falls under etc. We can get and set relationships between beans using several methods.

#### get\_linked\_beans

The `get_linked_beans` method allows retrieving a list of related beans for a given record.

<div class="code-block">
Example 3.14: get\_linked\_beans method signature

------------------------------------------------------------------------

<div class="highlight">
    1 get_linked_beans(
    2                 $field_name,
    3                 $bean_name,
    4                 $sort_array = array(),
    5                 $begin_index = 0,
    6                 $end_index = -1,
    7                 $deleted=0,
    8                 $optional_where=&quot;&quot;);

</div>

------------------------------------------------------------------------

</div>
$field\_name  
The link field name for this link. Note that this is not the same as the name of the relationship. If you are unsure of what this should be you can take a look into the cached vardefs of a module in `cache/modules/<TheModule>/<TheModule>Vardefs.php` for the link definition.

$bean\_name  
The name of the bean that we wish to retrieve.

$sort\_array  
This is a legacy parameter and is unused.

$begin\_index  
Skips the initial `$begin_index` results. Can be used to paginate.

$end\_index  
Return up to the `$end_index` result. Can be used to paginate.

$deleted  
Controls whether deleted or non deleted records are shown. If true only deleted records will be returned. If false only non deleted records will be returned.

$optional\_where  
Allows filtering the results using an SQL WHERE clause. See the `get_list` method for more details.

##### Results

`get_linked_beans` returns an array of the linked beans.

##### Example

<div class="code-block">
Example 3.15: Example get\_linked\_beans call

------------------------------------------------------------------------

<div class="highlight">
    1 $accountBean-&gt;get_linked_beans(
    2                 'contacts',
    3                 'Contacts',
    4                 array(),
    5                 0,
    6                 10,
    7                 0,
    8                 &quot;contacts.primary_address_country = 'USA'&quot;);

</div>

------------------------------------------------------------------------

</div>
#### relationships

In addition to the `get_linked_beans` call you can also load and access the relationships more directly.

##### Loading

Before accessing a relationship you must use the `load_relationship` call to ensure it is available. This call takes the link name of the relationship (not the name of the relationship). As mentioned previously you can find the name of the link in `cache/modules/<TheModule>/<TheModule>Vardefs.php` if you’re not sure.

<div class="code-block">
Example 3.16: Loading a relationship

------------------------------------------------------------------------

<div class="highlight">
    1 //Load the relationship
    2 $accountBean-&gt;load_relationship('contacts');
    3 //Can now call methods on the relationship object:
    4 $contactIds = $accountBean-&gt;contacts-&gt;get();

</div>

------------------------------------------------------------------------

</div>
##### Methods

###### `get`

Returns the ids of the related records in this relationship e.g for the account - contacts relationship in the example above it will return the list of ids for contacts associated with the account.

###### `getBeans`

Similar to `get` but returns an array of beans instead of just ids.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><div class="figure">
<img src="images/leanpub_warning.png" title="warning" alt="warning" width="50" />
<p class="caption">warning</p>
</div></td>
<td><p><code>getBeans</code> will load the full bean for each related record. This may cause poor performance for relationships with a large number of beans.</p></td>
</tr>
</tbody>
</table>

###### `add`

Allows relating records to the current bean. `add` takes a single id or bean or an array of ids or beans. If the bean is available this should be used since it prevents reloading the bean. For example to add a contact to the relationship in our example we can do the following:

<div class="code-block">
Example 3.18: Adding a new contact to a relationship

------------------------------------------------------------------------

<div class="highlight">
     1 //Load the relationship
     2 $accountBean-&gt;load_relationship('contacts');
     3 
     4 //Create a new demo contact
     5 $contactBean = BeanFactory::newBean();
     6 $contactBean-&gt;first_name = 'Jim';
     7 $contactBean-&gt;last_name = 'Mackin';
     8 $contactBean-&gt;save();
     9 
    10 //Link the bean to $accountBean
    11 $accountBean-&gt;contacts-&gt;add($contactBean);

</div>

------------------------------------------------------------------------

</div>
###### `delete`

`delete` allows unrelating beans. Counter-intuitively it accepts the ids of both the bean and the related bean. For the related bean you should pass the bean if it is available e.g when unrelating an account and contact:

<div class="code-block">
Example 3.19: Removing a new contact from a relationship

------------------------------------------------------------------------

<div class="highlight">
    1 //Load the relationship
    2 $accountBean-&gt;load_relationship('contacts');
    3 
    4 //Unlink the contact from the account - assumes $contactBean is a Contact SugarB\
    5 ean
    6 $accountBean-&gt;contacts-&gt;delete($accountBean-&gt;id, $contactBean);

</div>

------------------------------------------------------------------------

</div>
<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><div class="figure">
<img src="images/leanpub_warning.png" title="warning" alt="warning" width="50" />
<p class="caption">warning</p>
</div></td>
<td><p>Be careful with the delete method. Omitting the second argument will cause all relationships for this link to be removed.</p></td>
</tr>
</tbody>
</table>

</div>
<span id="chap03.xhtml"></span>

<div>
<span class="section-number">4. </span>Vardefs
----------------------------------------------

### What are Vardefs

The Vardefs are used to supply information to SuiteCRM about a particular bean. These generally specify the fields, relationships and indexes in a given module as well as additional information such as whether it is audited, the table name etc.

### Defining Vardefs

#### Module

Vardefs are initially defined in their respective modules folder. For the Accounts module this will be in modules/Accounts/vardefs.php. The information is stored in an array named $dictionary using the module name as the key. For Accounts this will be `$dictionary['Account']`. Let’s look at the Account vardefs (which have been edited for brevity):

<div class="code-block">
Example 4.1: Account Vardefs

------------------------------------------------------------------------

<div class="highlight">
     1 $dictionary['Account'] =
     2 array(
     3  'table' =&gt; 'accounts',
     4  'audited'=&gt;true,
     5  'unified_search' =&gt; true,
     6  'unified_search_default_enabled' =&gt; true,
     7  'duplicate_merge'=&gt;true,
     8  'comment' =&gt; 'Accounts are organizations or entities that ...',
     9  'fields' =&gt; array (
    10    //Snipped for brevity. See the fields section.
    11  ),
    12  'indices' =&gt; array (
    13    //Snipped for brevity. See the indices section.
    14  ),
    15  'relationships' =&gt; array (
    16    //Snipped for brevity. See the relationship section.
    17  ),
    18  //This enables optimistic locking for Saves From EditView
    19  'optimistic_locking'=&gt;true,
    20 );
    21 
    22 VardefManager::createVardef(
    23  'Accounts',
    24  'Account',
    25  array('default', 'assignable','company',)
    26 );

</div>

------------------------------------------------------------------------

</div>
##### Keys

The following are some of the keys that can be specified for the vardefs. Fields, indices and relationships are covered in their own sections.

`table`  
The database table name for this module.

`audited`  
Whether or not this module should be audited. Note that `audited` must also be set at the fields level for a field to be audited.

`unified_search`  
Whether this module can be searchable via the global search.

`unified_search_default_enabled`  
Whether this module is searchable via the global search by default.

`duplicate_merge`  
Whether or not duplicate merging functionality is enabled for this module.

`comment`  
A description of this module.

`optimistic_locking`  
Whether optimistic should be enabled for this module. Optimistic locking locks concurrent edits on a record by assuming that there will be no conflict. On save the last modified timestamp on the record will be checked. If it is different then an edit has occurred since this record was loaded. If this is the case then the user will be prompted with a page showing the differences in the two edits and asked to choose which edits are to be used.

##### Fields

The field defines the behaviour and attributes of each field in the module.

`name`  
The name of the field.

`vname`  
The name of the language label to be used for this field.

`type`  
The type of the field. See the field types section.

`isnull`  
Whether null values are allowed

`len`  
If the field is a string type, the max number of characters allowed.

`options`  
For enum fields the language label for the dropdown values for this field

`dbtype`  
The type to be used by the database to store this field. This is not required as the appropriate type is usually chosen.

`default`  
The default value of this field.

`massupdate`  
Whether or not this field should be mass updatable. Note that some field types are always restricted from mass updates.

`rname`  
For related fields only. The name of the field to be taken from the related module.

`id_name`  
For related fields only. The field in this bean which contains the related id.

`source`  
The source of this field. Can be set to ‘non-db’ if the field is not stored in the database - for example for link fields, fields populated by logic hooks or by other means.

`sort_on`  
For concatenated fields (i.e. name fields) the field which should be used to sort.

`fields`  
For concatenated fields (i.e. name fields) an array of the fields which should be concatenated.

`db_concat_fields`  
For concatenated fields (i.e. name fields) an array of the fields which should be concatenated in the database. Usually this is the same as fields.

`unified_search`  
True if this field should be searchable via the global search.

`enable_range_search`  
Whether the list view search should allow a range search of this field. This is used for date and numeric fields.

`studio`  
Whether the field should display in studio.

`audited`  
Whether or not changes to this field should be audited.

##### Field types

The following are common field types used:

`id`  
An id field.

`name`  
A name field. This is usually a concatenation of other fields.

`bool`  
A boolean field.

`varchar`  
A variable length string field.

`char`  
A character field.

`text`  
A text area field.

`decimal`  
A decimal field.

`date`  
A date field.

`datetime`  
A date and time field.

`enum`  
A dropdown field.

`phone`  
A phone number field.

`link`  
A link to another module via a relationship.

`relate`  
A related bean field.

##### Indices

The indices array allows defining any database indexes that should be in place on the database table for this module. Let’s look at an example:

<div class="code-block">
Example 4.2: Example indices definition

------------------------------------------------------------------------

<div class="highlight">
     1 'indices' =&gt; array (
     2  array(
     3      'name' =&gt;'idx_mymod_id_del',
     4      'type' =&gt;'index',
     5      'fields'=&gt;array('id', 'deleted')),
     6  array(
     7      'name' =&gt;'idx_mymod_parent_id',
     8      'type' =&gt;'index',
     9      'fields'=&gt;array( 'parent_id')),
    10  array(
    11      'name' =&gt;'idx_mymod_parent_id',
    12      'type' =&gt;'unique',
    13      'fields'=&gt;array( 'third_party_id')),
    14  ),

</div>

------------------------------------------------------------------------

</div>
Each array entry should have, at least, the following entries:

name  
The name of the index. This is usually used by the database to reference the index. Most databases require that these are unique.

type  
The type of the index to create. `index` will simply add an index on the fields, `unique` will add a unique constraint on the fields, `primary` will add the fields as a primary key.

fields  
An array of the fields to be indexed. The order of this array will be used as the order of the fields in the index.

##### Relationships

The Vardefs also specify the relationships within this module. Here’s an edited example from the Accounts module:

<div class="code-block">
Example 4.3: Example relationships definition

------------------------------------------------------------------------

<div class="highlight">
     1 'relationships' =&gt; array (
     2  'account_cases' =&gt; array(
     3      'lhs_module'=&gt; 'Accounts',
     4      'lhs_table'=&gt; 'accounts',
     5      'lhs_key' =&gt; 'id',
     6      'rhs_module'=&gt; 'Cases',
     7      'rhs_table'=&gt; 'cases',
     8      'rhs_key' =&gt; 'account_id',
     9      'relationship_type' =&gt; 'one-to-many'),
    10 ),

</div>

------------------------------------------------------------------------

</div>
Here we see the link between accounts and cases. This is specified with the following keys:

`lhs_module`  
The module on the left hand side of this relationship. For a one to many relationship this will be the “One” side.

`lhs_table`  
The table for the left hand side module. If you are unsure the table for a module can be found in it’s vardefs.

`lhs_key`  
The field to use for the left hand side of this link. In this case it is the `id` of the account.

`rhs_module`  
The right hand side module. In this case the “many” side of the relationship.

`rhs_table`  
The table for the right hand side module. As stated previously you can find the table for a module can be found in it’s vardefs.

`rhs_key`  
The field to use on the right hand side. In this case the `account_id` field on cases.

`relationship_type`  
The type of relationship - “one-to-many” or “many-to-many”. Since this is a one to many relationship it means a case is related to a single account but a single account can have multiple cases.

For many to many relationship fields the following keys are also available:

`join_table`  
The name of the join table for this relationship.

`join_key_lhs`  
The name of the field on the join table for the left hand side.

`join_key_rhs`  
The name of the field on the join table for the right hand side.

#### Vardef templates

Vardef templates provide a shortcut for defining common vardefs. This is done by calling `VardefManager::createVardef` and passing the module name, object name and an array of templates to be assigned. The following is an example from the accounts vardefs:

<div class="code-block">
Example 4.4: Example vardef template

------------------------------------------------------------------------

<div class="highlight">
    22 VardefManager::createVardef(
    23      'Accounts',
    24      'Account',
    25      array('default', 'assignable','company',)
    26      );

</div>

------------------------------------------------------------------------

</div>
In this example the `default`, `assignable` and `company` templates are used. The following are some of the available templates:

`basic`
  

`default`

  
Adds the common base fields such as `id`, `name`, `date_entered`, etc.

`assignable`  
Adds the fields and relationships necessary to assign a record to a user.

`person`  
Adds fields common to people records such as `first_name`, `last_name`, address, etc.

`company`  
Adds fields common to companies such as an industry dropdown, address, etc.

#### Customising vardefs

Vardefs can be customised by adding a file into

<div class="code-block">
Example 4.5: Custom vardef location

------------------------------------------------------------------------

<div class="highlight">
    custom/Extension/modules/&lt;TheModule&gt;/Ext/SomeFile.php

</div>

------------------------------------------------------------------------

</div>
This file can then be used to add a new field definition or customise an existing one e.g changing a field type:

<div class="code-block">
Example 4.6: Example overriding an existing vardef

------------------------------------------------------------------------

<div class="highlight">
    $dictionary[&quot;TheModule&quot;][&quot;fields&quot;][&quot;some_field&quot;]['type'] = 'int';

</div>

------------------------------------------------------------------------

</div>
</div>
<span id="chap04.xhtml"></span>

<div>
<span class="section-number">5. </span>Views
--------------------------------------------

SuiteCRM follows the MVC (Model-View-Controller) pattern and as such has the concept of views. Views are responsible for gathering and displaying data . There are a number of default views in SuiteCRM. These include

ListView  
Displays a list of records and provides links to the EditViews and DetailViews of those records. The ListView also allows some operations such as deleting and mass updating records. This is (usually) the default view for a module.

DetailView  
Displays the details of a single record and also displays subpanels of related records.

EditView  
The EditView allows editing the various fields of a record and provides validation on these values.

### Location

Views can be found in `modules/<TheModule>/views/` or, for custom views,
`custom/modules/<TheModule>/views/`, and are named in the following format: `view.<viewname>.php`. For example, the Accounts DetailView can be found in `modules/Accounts/views/view.detail.php` with a customised version in `custom/modules/Accounts/views/view.detail.php`. The custom version is used if it exists. If it doesn’t then the module version is used. Finally, if neither of these exist then the SuiteCRM default is used in `include/MVC/View/views/`.

### Customising

In order to customise a View we first need to create the appropriate view file. This will vary depending on the module we wish to target.

#### Custom module

In this case we can place the file directly into our module. Create a new file (if it doesn’t exist) at `modules/<TheModule>/views/view.<viewname>.php`. The contents will look similar to:

<div class="code-block">
Example 5.1: View for a custom module

------------------------------------------------------------------------

<div class="highlight">
    1 &lt;?php
    2 
    3 require_once 'include/MVC/View/views/view.&lt;viewname&gt;.php';
    4 
    5 if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');
    6 class &lt;TheModule&gt;View&lt;ViewName&gt; extends View&lt;ViewName&gt;
    7 {
    8 
    9 }

</div>

------------------------------------------------------------------------

</div>
A more concrete example would be for the detail view for a custom module called ABC\_Vehicles:

<div class="code-block">
Example 5.2: Detail view for a custom module, ABC\_Vehicles

------------------------------------------------------------------------

<div class="highlight">
    1 &lt;?php
    2 
    3 require_once 'include/MVC/View/views/view.detail.php';
    4 
    5 if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');
    6 class ABC_VehiclesViewDetail extends ViewDetail
    7 {
    8 
    9 }

</div>

------------------------------------------------------------------------

</div>
#### Preexisting modules

For preexisting modules you will want to add the view to
`custom/modules/<TheModule>/views/view.<viewname>.php`.

The contents of this file will vary depending on whether you wish to extend the existing view (if it exists) or create your own version completely. It is usually best to extend the existing view, since this will retain important logic. Note the naming convention here. We name the class
`Custom<TheModule>View<ViewName>` (for example `CustomAccountsViewDetail`).

Here we don’t extend the existing view or no such view exists:

<div class="code-block">
Example 5.3: Custom view for an existing module

------------------------------------------------------------------------

<div class="highlight">
    1 &lt;?php
    2 if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');
    3 
    4 require_once 'include/MVC/View/views/view.&lt;viewname&gt;.php';
    5 
    6 class Custom&lt;TheModule&gt;View&lt;ViewName&gt; extends ViewDetail
    7 {
    8 
    9 }

</div>

------------------------------------------------------------------------

</div>
Otherwise we extend the existing view. Note that we are requiring the existing view:

<div class="code-block">
Example 5.4: Overriding a view for an existing module

------------------------------------------------------------------------

<div class="highlight">
    1 &lt;?php
    2 if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');
    3 
    4 require_once 'modules/&lt;TheModule&gt;/views/view.&lt;viewname&gt;.php';
    5 
    6 class Custom&lt;TheModule&gt;View&lt;ViewName&gt; extends &lt;TheModule&gt;View&lt;ViewName&gt;
    7 {
    8 
    9 }

</div>

------------------------------------------------------------------------

</div>
For example, overriding the List View of Accounts:

<div class="code-block">
Example 5.5: Overriding the Accounts List View

------------------------------------------------------------------------

<div class="highlight">
    1 &lt;?php
    2 if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');
    3 
    4 require_once 'modules/Accounts/views/view.list.php';
    5 
    6 class CustomAccountsViewList extends AccountsViewList
    7 {
    8 
    9 }

</div>

------------------------------------------------------------------------

</div>
#### Making changes

Now that we have a custom view what can we actually do? The views have various methods which we can now override to change/add behaviour. The most common ones to override are:

preDisplay  
Explicitly intended to allow logic to be called before display() is called. This can be used to alter arguments to the list view or to output anything to appear before the main display code (such as, for example, adding JavaScript).

display  
Does the actual work of displaying the view. Can be overridden to alter this behaviour or to output anything after the main display. You usually want to call parent::display(); to ensure that the display code is run (unless, of course, you are adding your own display logic).

</div>
<span id="chap05.xhtml"></span>

<div>
<span class="section-number">6. </span>Metadata
-----------------------------------------------

### Intro

Module metadata are used to describe how various views behave in the module. The main use of this is providing field and layout information but this can also be used to filter subpanels and to describe what fields are used in the search.

### Location

Module metadata can be found in:

<div class="code-block">
Example 6.1: Module metadata location

------------------------------------------------------------------------

<div class="highlight">
    modules/&lt;TheModule&gt;/metadata/

</div>

------------------------------------------------------------------------

</div>
### Customising

Usually studio is the best way of customising metadata. Even when you do wish to make customisations that are not possible through studio it can be simpler to set everything up in studio first. This is particularly true for layout based metadata. However if you are customising metadata it is as simple as placing, or editing, the file in the custom directory. For example to override the Accounts detailviewdefs (found in `modules/Accounts/metadata/detailviewdefs.php`) we would place (or edit) the file in `custom/modules/Accounts/metadata/detailviewdefs.php`. One exception to this rule is the studio.php file. The modules metadata folder is the only location checked - any version in `custom/<TheModule>/metadata/studio.php` is ignored.

### Different metadata

#### detailviewdefs.php

detailviewdefs.php provides information on the layout and fields of the detail view for this module. This file uses the same structure as editviewdefs.php. Let’s look at an example for a fictional module `ABC_Vehicles`:

<div class="code-block">
Example 6.2: DetailView metadata definition

------------------------------------------------------------------------

<div class="highlight">
     1 &lt;?php
     2 $viewdefs ['ABC_Vehicles'] ['DetailView'] = array (
     3  'templateMeta' =&gt; array (
     4      'form' =&gt; array (
     5          'buttons' =&gt; array (
     6              'EDIT',
     7              'DUPLICATE',
     8              'DELETE',
     9              'FIND_DUPLICATES'
    10          )
    11      ),
    12      'maxColumns' =&gt; '2',
    13      'widths' =&gt; array (
    14          array (
    15              'label' =&gt; '10',
    16              'field' =&gt; '30'
    17          ),
    18          array (
    19              'label' =&gt; '10',
    20              'field' =&gt; '30'
    21          )
    22      ),
    23      'includes' =&gt; array (
    24          array (
    25              'file' =&gt; 'modules/ABC_Vehicles/ABC_VehiclesDetail.js'
    26          )
    27      )
    28  ),
    29  'panels' =&gt; array (
    30      'LBL_ABC_VEHICLES_INFO' =&gt; array (
    31          array (
    32              array (
    33                  'name' =&gt; 'name',
    34                  'comment' =&gt; 'The Name of the Vehicle',
    35                  'label' =&gt; 'LBL_NAME',
    36              ),
    37              'reg_number'
    38          ),
    39          array (
    40              array (
    41                  'name' =&gt; 'type',
    42                  'label' =&gt; 'LBL_TYPE',
    43              ),
    44              array (
    45                  'name' =&gt; 'phone_fax',
    46                  'comment' =&gt; 'The fax phone number of this company',
    47                  'label' =&gt; 'LBL_FAX'
    48              )
    49          ),
    50          array (
    51              array (
    52                  'name' =&gt; 'registered_address_street',
    53                  'label' =&gt; 'LBL_REGISTERED_ADDRESS',
    54                  'type' =&gt; 'address',
    55                  'displayParams' =&gt; array (
    56                      'key' =&gt; 'registered'
    57                  )
    58              ),
    59          ),
    60      ),
    61      'LBL_PANEL_ADVANCED' =&gt; array (
    62       array (
    63              array (
    64                  'name' =&gt; 'assigned_user_name',
    65                  'label' =&gt; 'LBL_ASSIGNED_TO'
    66              ),
    67              array (
    68                  'name' =&gt; 'date_modified',
    69                  'label' =&gt; 'LBL_DATE_MODIFIED',
    70                  'customCode' =&gt; '{$fields.date_modified.value} '
    71                          + '{$APP.LBL_BY} '
    72                          + '{$fields.modified_by_name.value}',
    73              )
    74          ),
    75      ),
    76  )
    77 );
    78 ?&gt;

</div>

------------------------------------------------------------------------

</div>
We see that line 2 defines an array `$viewdefs['ABC_Vehicles']['DetailView']` which places a DetailView entry for the module ABC\_Vehicles into `$viewdefs` (DetailView will be EditView or QuickCreateView as appropriate). This array has two main keys defined here:

##### templateMeta

The templateMeta key provides information about the view in general. The `['form']['buttons']` entries define the buttons that should appear in this view.

`maxColumns`  
Defines the number of columns to use for this view. It is unusual for this to be more than 2.

`widths`  
An array defining the width of the label and field for each column.

`includes`  
An array of additional JavaScript files to include. This is useful for adding custom JavaScript behaviour to the page.

##### panels

The panels entry defines the actual layout of the Detail (or Edit) view. Each entry is a new panel in the view with the key being the label for that panel. We can see in our example that we have 2 panels. One uses the label defined by the language string `LBL_ABC_VEHICLES_INFO`, the other uses `LBL_PANEL_ADVANCED`.

Each panel has an array entry for each row, with each array containing an entry for each column. For example we can see that the first row has the following definition:

<div class="code-block">
Example 6.3: DetailView metadata row definition

------------------------------------------------------------------------

<div class="highlight">
    31 array(
    32  array (
    33      'name' =&gt; 'name',
    34      'comment' =&gt; 'The Name of the Vehicle',
    35      'label' =&gt; 'LBL_NAME',
    36  ),
    37  'reg_number',
    38 ),

</div>

------------------------------------------------------------------------

</div>
This has an array definition for the first row, first column and a string definition for the first row, second column. The string definition is very straightforward and simply displays the detail (or edit, as appropriate) view for that field. It will use the default label, type, etc. In our example we are displaying the field named `reg_number`.

The array definition for the first row, first column is a little more complex. Each array definition must have a `name` value. In our example we are displaying the `name` field. However we also supply some other values. Values most commonly used are:

`comment`  
Used to note the purpose of the field.

`label`  
The language key for this label. If the language key is not recognised then this value will be used instead (see the [chapter on language](#chap08.xhtml#language-chapter "wikilink")).

`displayParams`  
An array used to pass extra arguments for the field display. For the options and how they are used you can have a look into the appropriate field type in `include/SugarFields/Fields` or `custom/include/SugarFields/Fields`. An example is setting the size of a textarea:

<div class="code-block">
Example 6.4: DetailView metadata displayParams

------------------------------------------------------------------------

<div class="highlight">
    1 'displayParams' =&gt; array(
    2     'rows' =&gt; 2,
    3     'cols' =&gt; 30,
    4 ),

</div>

------------------------------------------------------------------------

</div>
customCode  
Allows supplying custom smarty code to be used for the display. The code here can include any valid smarty code and this will also have access to the current fields in this view via `$fields`. An example of outputing the ID field would be `{$fields.id.value}`. Additionally the module labels and app labels can be accessed via `$MOD` and `$APP` respectively. Finally you can use `@@FIELD@@` to output the value of the field that would have been used. For example `{if $someCondition}@@FIELD@@{/if}` will conditionally show the field.

#### editviewdefs.php

`editviewdefs.php` provides information on the layout and fields of the edit view for this module. This file uses the same structure as detailviewdefs.php. Please see the information on detailviewdefs.php.

#### listviewdefs.php

The `listviewdefs.php` file for a module defines what fields the list view for that module will display. Let’s take a look at an example:

<div class="code-block">
Example 6.5: ListView metadata definition

------------------------------------------------------------------------

<div class="highlight">
     1 $listViewDefs ['AOR_Reports'] =
     2 array (
     3   'NAME' =&gt;
     4   array (
     5     'width' =&gt; '15%',
     6     'label' =&gt; 'LBL_NAME',
     7     'default' =&gt; true,
     8     'link' =&gt; true,
     9   ),
    10   'REPORT_MODULE' =&gt;
    11   array (
    12     'type' =&gt; 'enum',
    13     'default' =&gt; true,
    14     'studio' =&gt; 'visible',
    15     'label' =&gt; 'LBL_REPORT_MODULE',
    16     'width' =&gt; '15%',
    17   ),
    18   'ASSIGNED_USER_NAME' =&gt;
    19   array (
    20     'width' =&gt; '15%',
    21     'label' =&gt; 'LBL_ASSIGNED_TO_NAME',
    22     'module' =&gt; 'Employees',
    23     'id' =&gt; 'ASSIGNED_USER_ID',
    24     'default' =&gt; true,
    25   ),
    26   'DATE_ENTERED' =&gt;
    27   array (
    28     'type' =&gt; 'datetime',
    29     'label' =&gt; 'LBL_DATE_ENTERED',
    30     'width' =&gt; '15%',
    31     'default' =&gt; true,
    32   ),
    33   'DATE_MODIFIED' =&gt;
    34   array (
    35     'type' =&gt; 'datetime',
    36     'label' =&gt; 'LBL_DATE_MODIFIED',
    37     'width' =&gt; '15%',
    38     'default' =&gt; true,
    39   ),
    40 );

</div>

------------------------------------------------------------------------

</div>
To define the list view defs we simply add a key to the `$listViewDefs` array. In this case we add an entry for `AOR_Reports` This array contains an entry for each field that we wish to show in the list view and is keyed by the upper case name of the field. For example, the `REPORT_MODULE` key refers to the `report_module` field of AOR\_Reports.

type  
The type of the field. This can be used to override how a field is displayed.

default  
Whether this field should be shown in the list view by default. If false then the field will appear in the available columns list in studio.

studio  
Whether or not this field should be displayed in studio. This can be useful to ensure that a critical field is not removed.

label  
The label to be used for this field. If this is not supplied then the default label for that field will be used.

width  
The width of the field in the list view. Note that, although this is usually given as a percentage it is treated as a proportion. The example above has five columns with a width of `15%` but these will actually be `20%` since this is a ratio.

#### popupdefs.php

popupdefs.php provides information on the layout, fields and search options of the module popup that is usually used when selecting a related record.

Let’s look at the default popupdefs.php for the Accounts module:

<div class="code-block">
Example 6.6: PopupView metadata definition

------------------------------------------------------------------------

<div class="highlight">
     1 $popupMeta = array(
     2  'moduleMain' =&gt; 'Case',
     3  'varName' =&gt; 'CASE',
     4  'className' =&gt; 'aCase',
     5  'orderBy' =&gt; 'name',
     6  'whereClauses' =&gt;
     7      array('name' =&gt; 'cases.name',
     8              'case_number' =&gt; 'cases.case_number',
     9              'account_name' =&gt; 'accounts.name'),
    10  'listviewdefs' =&gt; array(
    11      'CASE_NUMBER' =&gt; array(
    12          'width' =&gt; '5',
    13          'label' =&gt; 'LBL_LIST_NUMBER',
    14          'default' =&gt; true),
    15      'NAME' =&gt; array(
    16          'width' =&gt; '35',
    17          'label' =&gt; 'LBL_LIST_SUBJECT',
    18          'link' =&gt; true,
    19          'default' =&gt; true),
    20      'ACCOUNT_NAME' =&gt; array(
    21          'width' =&gt; '25',
    22          'label' =&gt; 'LBL_LIST_ACCOUNT_NAME',
    23          'module' =&gt; 'Accounts',
    24          'id' =&gt; 'ACCOUNT_ID',
    25          'link' =&gt; true,
    26          'default' =&gt; true,
    27          'ACLTag' =&gt; 'ACCOUNT',
    28          'related_fields' =&gt; array('account_id')),
    29      'PRIORITY' =&gt; array(
    30          'width' =&gt; '8',
    31          'label' =&gt; 'LBL_LIST_PRIORITY',
    32          'default' =&gt; true),
    33      'STATUS' =&gt; array(
    34          'width' =&gt; '8',
    35          'label' =&gt; 'LBL_LIST_STATUS',
    36          'default' =&gt; true),
    37      'ASSIGNED_USER_NAME' =&gt; array(
    38          'width' =&gt; '2',
    39          'label' =&gt; 'LBL_LIST_ASSIGNED_USER',
    40          'default' =&gt; true,
    41         ),
    42      ),
    43  'searchdefs'   =&gt; array(
    44      'case_number',
    45      'name',
    46      array(
    47          'name' =&gt; 'account_name',
    48          'displayParams' =&gt; array(
    49              'hideButtons'=&gt;'true',
    50              'size'=&gt;30,
    51              'class'=&gt;'sqsEnabled sqsNoAutofill'
    52          )
    53      ),
    54      'priority',
    55      'status',
    56      array(
    57          'name' =&gt; 'assigned_user_id',
    58          'type' =&gt; 'enum',
    59          'label' =&gt; 'LBL_ASSIGNED_TO',
    60          'function' =&gt; array(
    61              'name' =&gt; 'get_user_array',
    62              'params' =&gt; array(false))
    63          ),
    64    )
    65 );

</div>

------------------------------------------------------------------------

</div>
The popupdefs.php specifies a `$popupMeta` array with the following keys:

`moduleMain`  
The module that will be displayed by this popup.

`varName`  
The variable name used to store the search preferences etc. This will usually simply the upper case module name.

`className`  
The class name of the SugarBean for this module. If this is not supplied then `moduleMain` will be used. This is only really required for classes where the class name and module name differ (such as Cases).

`orderBy`  
The default field the list of records will be sorted by.

`whereClauses`  
Legacy option. This is only used as a fallback when there are no searchdefs. Defines the names of fields to allow searching for and their database representation.

`listviewdefs`  
The list of fields displayed in the popup list view. See `listviewdefs.php`.

`searchdefs`  
An array of the fields that should be available for searching in the popup. See the individual search defs in the searchdefs.php section (for example the `basic_search` array).

#### quickcreatedefs.php

`quickcreatedefs.php` provides information on the layout and fields of the quick create view for this module (this is the view that appears when creating a record from a subpanel). This file uses the same structure as `detailviewdefs.php`. Please see the information on `detailviewdefs.php`.

#### searchdefs.php

The search defs of a module define how searching in that module looks and behaves.

Let’s look at an example.

<div class="code-block">
Example 6.7: Search View metadata definition

------------------------------------------------------------------------

<div class="highlight">
      1 $searchdefs ['Accounts'] = array (
      2     'templateMeta' =&gt; array (
      3         'maxColumns' =&gt; '3',
      4         'maxColumnsBasic' =&gt; '4',
      5         'widths' =&gt; array (
      6             'label' =&gt; '10',
      7             'field' =&gt; '30'
      8         )
      9     ),
     10     'layout' =&gt; array (
     11         'basic_search' =&gt; array (
     12             'name' =&gt; array (
     13                 'name' =&gt; 'name',
     14                 'default' =&gt; true,
     15                 'width' =&gt; '10%'
     16             ),
     17             'current_user_only' =&gt; array (
     18                 'name' =&gt; 'current_user_only',
     19                 'label' =&gt; 'LBL_CURRENT_USER_FILTER',
     20                 'type' =&gt; 'bool',
     21                 'default' =&gt; true,
     22                 'width' =&gt; '10%'
     23             )
     24         )
     25         ,
     26         'advanced_search' =&gt; array (
     27             'name' =&gt; array (
     28                 'name' =&gt; 'name',
     29                 'default' =&gt; true,
     30                 'width' =&gt; '10%'
     31             ),
     32             'website' =&gt; array (
     33                 'name' =&gt; 'website',
     34                 'default' =&gt; true,
     35                 'width' =&gt; '10%'
     36             ),
     37             'phone' =&gt; array (
     38                 'name' =&gt; 'phone',
     39                 'label' =&gt; 'LBL_ANY_PHONE',
     40                 'type' =&gt; 'name',
     41                 'default' =&gt; true,
     42                 'width' =&gt; '10%'
     43             ),
     44             'email' =&gt; array (
     45                 'name' =&gt; 'email',
     46                 'label' =&gt; 'LBL_ANY_EMAIL',
     47                 'type' =&gt; 'name',
     48                 'default' =&gt; true,
     49                 'width' =&gt; '10%'
     50             ),
     51             'address_street' =&gt; array (
     52                 'name' =&gt; 'address_street',
     53                 'label' =&gt; 'LBL_ANY_ADDRESS',
     54                 'type' =&gt; 'name',
     55                 'default' =&gt; true,
     56                 'width' =&gt; '10%'
     57             ),
     58             'address_city' =&gt; array (
     59                 'name' =&gt; 'address_city',
     60                 'label' =&gt; 'LBL_CITY',
     61                 'type' =&gt; 'name',
     62                 'default' =&gt; true,
     63                 'width' =&gt; '10%'
     64             ),
     65             'address_state' =&gt; array (
     66                 'name' =&gt; 'address_state',
     67                 'label' =&gt; 'LBL_STATE',
     68                 'type' =&gt; 'name',
     69                 'default' =&gt; true,
     70                 'width' =&gt; '10%'
     71             ),
     72             'address_postalcode' =&gt; array (
     73                 'name' =&gt; 'address_postalcode',
     74                 'label' =&gt; 'LBL_POSTAL_CODE',
     75                 'type' =&gt; 'name',
     76                 'default' =&gt; true,
     77                 'width' =&gt; '10%'
     78             ),
     79             'billing_address_country' =&gt; array (
     80                 'name' =&gt; 'billing_address_country',
     81                 'label' =&gt; 'LBL_COUNTRY',
     82                 'type' =&gt; 'name',
     83                 'options' =&gt; 'countries_dom',
     84                 'default' =&gt; true,
     85                 'width' =&gt; '10%'
     86             ),
     87             'account_type' =&gt; array (
     88                 'name' =&gt; 'account_type',
     89                 'default' =&gt; true,
     90                 'width' =&gt; '10%'
     91             ),
     92             'industry' =&gt; array (
     93                 'name' =&gt; 'industry',
     94                 'default' =&gt; true,
     95                 'width' =&gt; '10%'
     96             ),
     97             'assigned_user_id' =&gt; array (
     98                 'name' =&gt; 'assigned_user_id',
     99                 'type' =&gt; 'enum',
    100                 'label' =&gt; 'LBL_ASSIGNED_TO',
    101                 'function' =&gt; array (
    102                     'name' =&gt; 'get_user_array',
    103                     'params' =&gt; array (
    104                             0 =&gt; false
    105                     )
    106                 ),
    107                 'default' =&gt; true,
    108                 'width' =&gt; '10%'
    109             )
    110         )
    111     )
    112 );

</div>

------------------------------------------------------------------------

</div>
Here we setup a new array for `Accounts` in the `$searchdefs` array. This has two keys:

##### templateMeta

The `templateMeta` key controls the basic look of the search forms. Here we define some overall layout info such as the maximum columns (3) and the maximum number of columns for the basic search (4). Finally we set the widths for the search fields and their labels.

##### layout

The `layout` key contains the layout definitions for the basic search and advanced search. This is simply a list of array definition of the fields. See the section on listviewdefs.php for a description of some of the options.

#### `subpaneldefs.php`

The subpaneldefs.php file provides definitions for the subpanels that appear in the detail view of a module. Let’s look at an example:

<div class="code-block">
Example 6.8: Subpanel metadata definition

------------------------------------------------------------------------

<div class="highlight">
     1 $layout_defs['AOS_Quotes'] = array (
     2  'subpanel_setup' =&gt; array (
     3      'aos_quotes_aos_contracts' =&gt; array (
     4          'order' =&gt; 100,
     5          'module' =&gt; 'AOS_Contracts',
     6          'subpanel_name' =&gt; 'default',
     7          'sort_order' =&gt; 'asc',
     8          'sort_by' =&gt; 'id',
     9          'title_key' =&gt; 'AOS_Contracts',
    10          'get_subpanel_data' =&gt; 'aos_quotes_aos_contracts',
    11          'top_buttons' =&gt; array (
    12              0 =&gt; array (
    13                  'widget_class' =&gt; 'SubPanelTopCreateButton'
    14              ),
    15              1 =&gt; array (
    16                  'widget_class' =&gt; 'SubPanelTopSelectButton',
    17                  'popup_module' =&gt; 'AOS_Contracts',
    18                  'mode' =&gt; 'MultiSelect'
    19              )
    20          )
    21      ),
    22      'aos_quotes_aos_invoices' =&gt; array (
    23          'order' =&gt; 100,
    24          'module' =&gt; 'AOS_Invoices',
    25          'subpanel_name' =&gt; 'default',
    26          'sort_order' =&gt; 'asc',
    27          'sort_by' =&gt; 'id',
    28          'title_key' =&gt; 'AOS_Invoices',
    29          'get_subpanel_data' =&gt; 'aos_quotes_aos_invoices',
    30          'top_buttons' =&gt; array (
    31              0 =&gt; array (
    32                  'widget_class' =&gt; 'SubPanelTopCreateButton'
    33              ),
    34              1 =&gt; array (
    35                  'widget_class' =&gt; 'SubPanelTopSelectButton',
    36                  'popup_module' =&gt; 'AOS_Invoices',
    37                  'mode' =&gt; 'MultiSelect'
    38              )
    39          )
    40      ),
    41      'aos_quotes_project' =&gt; array (
    42          'order' =&gt; 100,
    43          'module' =&gt; 'Project',
    44          'subpanel_name' =&gt; 'default',
    45          'sort_order' =&gt; 'asc',
    46          'sort_by' =&gt; 'id',
    47          'title_key' =&gt; 'Project',
    48          'get_subpanel_data' =&gt; 'aos_quotes_project',
    49          'top_buttons' =&gt; array (
    50              0 =&gt; array (
    51                  'widget_class' =&gt; 'SubPanelTopCreateButton'
    52              ),
    53              1 =&gt; array (
    54                  'widget_class' =&gt; 'SubPanelTopSelectButton',
    55                  'popup_module' =&gt; 'Accounts',
    56                  'mode' =&gt; 'MultiSelect'
    57              )
    58          )
    59      )
    60  )
    61 );

</div>

------------------------------------------------------------------------

</div>
In the example above we set up a definition for a module (in this case `AOS_Quotes`) in the `$layout_defs` array. This has a single key `subpanel_setup` which is an array of each of the subpanel definitions keyed by a name. This name should be something recognisable. In the case above it is the name of the link field displayed by the subpanel. The entry for each subpanel usually has the following defined:

order  
A number used for sorting the subpanels. The values themselves are arbitrary and are only used relative to other subpanels.

module  
The module which will be displayed by this subpanel. For example the `aos_quotes_project` def in the example above will display a list of `Project` records.

subpanel\_name  
The subpanel from the displayed module which will be used. See the subpanels section of this chapter.

sort\_by  
The field to sort the records on.

sort\_order  
The order in which to sort the `sort_by` field. `asc` for ascending `desc` for descending.

title\_key  
The language key to be used for the label of this subpanel.

get\_subpanel\_data  
Used to specify where to retrieve the subpanel records. Usually this is just a link name for the current module. In this case the related records will be displayed in the subpanel. However, for more complex links, it is possible to specify a function to call. When specifying a function you should ensure that the `get_subpanel_data` entry is in the form `function:theFunctionName`. Additionally you can specify the location of the function and any additional parameters that are needed by using the `function_parameters` key. An example of a subpanel which uses a function can be found in [Appendix A](#chap19.xhtml#appendix-a "wikilink").

function\_parameters  
Specifies the parameters for a subpanel which gets it’s information from a function (see

`get_subpanel_data`). This is an array which allows specifying where the function is by using the `import_function_file` key (if this is absent but `get_subpanel_data` defines a function then the function will be called on the bean for the parent of the subpanel). Additionally this array will be passed as an argument to the function defined in `get_subpanel_data` which allows passing in arguments to the function.

generate\_select  
For function subpanels (see `get_subpanel_data`) whether or not the function will return an array representing the query to be used (for `generate_select = true`) or whether it will simply return the query to be used as a string.

get\_distinct\_data  
Whether or not to only return distinct rows. Relationships do not allow linking two records more than once therefore this only really applies if the subpanel source is a function. See

`get_subpanel_data` for information on function subpanel sources.

top\_buttons  
Allows defining the buttons to appear on the subpanel. This is simply an array of the button definitions. These definitions have, at least, the `widget_class` defined which decides the button class to use in `include/generic/SugarWidgets`. Depending on the button this array may also be used to pass in extra arguments to the widget class.

#### subpanels

Inside the metadata folder is the `subpanels` folder. This allows creating different subpanel layouts for different parent modules. For example, the Contacts module will display differently in the subpanel on an account than it will in the subpanel of a case. The files inside the `subpanels` folder can be named anything. All that matters is that it can be referenced in the `subpanel_name` of the `subpaneldefs.php` of the parent module. The usual subpanel file is simply called `default.php`. Let’s look at the `modules/Accounts/metadata/subpanels/default.php` file:

<div class="code-block">
Example 6.8: Module Subpanels definition

------------------------------------------------------------------------

<div class="highlight">
     1 $subpanel_layout = array(
     2  'top_buttons' =&gt; array(
     3      array(
     4          'widget_class' =&gt; 'SubPanelTopCreateButton'
     5      ),
     6      array(
     7          'widget_class' =&gt; 'SubPanelTopSelectButton', 
     8          'popup_module' =&gt; 'Accounts'
     9      ),
    10  ),
    11  'where' =&gt; '',
    12  'list_fields' =&gt; array (
    13    'name' =&gt;
    14    array (
    15     'vname' =&gt; 'LBL_LIST_ACCOUNT_NAME',
    16     'widget_class' =&gt; 'SubPanelDetailViewLink',
    17     'width' =&gt; '45%',
    18     'default' =&gt; true,
    19    ),
    20    'billing_address_city' =&gt;
    21    array (
    22      'vname' =&gt; 'LBL_LIST_CITY',
    23      'width' =&gt; '20%',
    24      'default' =&gt; true,
    25    ),
    26    'billing_address_country' =&gt;
    27    array (
    28      'type' =&gt; 'varchar',
    29      'vname' =&gt; 'LBL_BILLING_ADDRESS_COUNTRY',
    30      'width' =&gt; '7%',
    31      'default' =&gt; true,
    32    ),
    33    'phone_office' =&gt;
    34    array (
    35      'vname' =&gt; 'LBL_LIST_PHONE',
    36      'width' =&gt; '20%',
    37      'default' =&gt; true,
    38    ),
    39    'edit_button' =&gt;
    40    array (
    41      'vname' =&gt; 'LBL_EDIT_BUTTON',
    42      'widget_class' =&gt; 'SubPanelEditButton',
    43      'width' =&gt; '4%',
    44      'default' =&gt; true,
    45    ),
    46    'remove_button' =&gt;
    47    array (
    48      'vname' =&gt; 'LBL_REMOVE',
    49      'widget_class' =&gt; 'SubPanelRemoveButtonAccount',
    50      'width' =&gt; '4%',
    51      'default' =&gt; true,
    52    ),
    53    )
    54 );

</div>

------------------------------------------------------------------------

</div>
There are three keys in the `$subpanel_layout` variable for this subpanel. These are:

`top_buttons`  
Defines the buttons that will appear at the top of the subpanel. See the `top_buttons` key in `subpaneldefs.php`.

`where`  
Allows the addition of conditions to the `where` clause. For example this could be used to exclude Cases that are closed (`cases.state != "Closed"`) or only include Accounts of a specific industry (`accounts.industry = "Media"`). Note that in these examples we specify the table to remove any ambiguity in the query.

`list_fields`  
Defines the list of fields to be displayed in this subpanel. See the section on `listviewdefs.php` for more information.

#### studio.php

studio.php is the simplest file in metadata and it’s existence is simply used to confirm if a module should be shown in studio for user tweaking. Note that, unlike other metadata files, the file in `modules/<TheModule>/metadata/studio.php` will be the only one checked. A file in `custom/modules/<TheModule>/metadata/studio.php` will have no effect.

</div>
<span id="chap06.xhtml"></span>

<div>
<span class="section-number">7. </span>Controllers
--------------------------------------------------

SuiteCRM follows the MVC (Model-View-Controller) pattern and as such has the concept of controllers. The controller is responsible for making changes to the Model as well as passing control to the view as appropriate. SuiteCRM has the concept of actions which are actions that will be taken by the controller. Let’s take a look at a SuiteCRM URL:

<div class="code-block">
Example 7.1: Example SuiteCRM URL

------------------------------------------------------------------------

<div class="highlight">
    example.com/index.php?module=Accounts&amp;action=index

</div>

------------------------------------------------------------------------

</div>
In this (rather boring) example we see that the module is Accounts. This will determine which controller to use and then call the index action on that controller.

SuiteCRM will first look for the controller in `custom/module/<TheModule>/controller.php`. If this is not found then next `module/<TheModule>/controller.php` will be checked. Finally if neither of these controllers exist then the default controller will be used. The default controller can be found in `include/MVC/Controller/SugarController.php`.

### Customising controllers

Ordinarily the default controller handles the request and delegates to the appropriate views etc. However custom controllers can be used to add or alter functionality. Let’s look at adding a new action.

In the first instance we will have to add our custom controller. This will vary slightly depending on the nature of the module.

#### Custom module

In this case we can place the file directly into our module. You should create a new file (if it doesn’t exist) at `modules/<TheModule>/controller.php`. The contents will look similar to:

<div class="code-block">
Example 7.2: Creating a custom controller for a custom module

------------------------------------------------------------------------

<div class="highlight">
    1 &lt;?php
    2 if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');
    3 class &lt;TheModule&gt;Controller extends SugarController
    4 {
    5 
    6 }

</div>

------------------------------------------------------------------------

</div>
#### Pre-existing modules

For pre-existing modules you should add the controller to
`custom/modules/<TheModule>/controller.php`.

The contents of this file will vary depending on whether you wish to extend the existing controller (if it exists) or create your own version completely. It is usually best to extend the existing controller since this will retain important logic. You should note the naming convention here. We name the class
`Custom<TheModule>Controller`.

Here we don’t extend the existing controller or no such controller exists:

<div class="code-block">
Example 7.3: Creating a custom controller for an existing module

------------------------------------------------------------------------

<div class="highlight">
    1 &lt;?php
    2 if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');
    3 class Custom&lt;TheModule&gt;Controller extends SugarController
    4 {
    5 
    6 }

</div>

------------------------------------------------------------------------

</div>
Alternatively we extend the existing controller. Note that we are requiring the existing controller:

<div class="code-block">
Example 7.4: Creating a custom controller for an existing module with an existing controller

------------------------------------------------------------------------

<div class="highlight">
    1 &lt;?php
    2 if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');
    3 
    4 require_once 'modules/&lt;TheModule&gt;/controller.php';
    5 
    6 class Custom&lt;TheModule&gt;Controller extends &lt;TheModule&gt;Controller
    7 {
    8 
    9 }

</div>

------------------------------------------------------------------------

</div>
#### Adding the action

Now we can add a new action to our controller. Actions are created as methods on the controller with the name `action_<actionName>`. For example, to create a new action called ‘echo’ we could create the following method in one of the controllers we have created above. This can then perform whatever logic that is needed. In our example we will log the REQUEST and simply redirect:

<div class="code-block">
Example 7.5: Adding a custom controller action method

------------------------------------------------------------------------

<div class="highlight">
    1 public function action_echo(){
    2   $GLOBALS['log']-&gt;debug(&quot;Echo called with request: &quot;.print_r($_REQUEST,1));
    3   SugarApplication::redirect('index.php');
    4 }

</div>

------------------------------------------------------------------------

</div>
#### Legacy Style

In previous versions of SugarCRM a new action was added by creating a file in either `modules/<TheModule>/<actionname>.php` or `custom/modules/<TheModule>/<actionname>.php`. Although this still works it is not recommended.

</div>
<span id="chap07.xhtml"></span>

<div>
<span class="section-number">8. </span>Entry Points
---------------------------------------------------

Entry points are simply a page which provides access to SuiteCRM. These can be used for a variety of purposes such as allowing an external form simple access to SuiteCRM or, as is the case with the stock Events module, allowing an event invite to be responded to by clicking a link in an email.

### Creating an entry point

Let’s create a simple entry point to display the time. First we define this entry point in a new file in:

<div class="code-block">
Example 8.1: Entry point registry location

------------------------------------------------------------------------

<div class="highlight">
    custom/Extension/application/Ext/EntryPointRegistry/

</div>

------------------------------------------------------------------------

</div>
For our example we’ll call our new file MyTimeEntryPoint.php

<div class="code-block">
Example 8.2: Example entry point location

------------------------------------------------------------------------

<div class="highlight">
    custom/Extension/application/Ext/EntryPointRegistry/MyTimeEntryPoint.php

</div>

------------------------------------------------------------------------

</div>
In this file we will add a new entry to the `$entry_point_registry`. We supply the file that should be called. Here we are simply placing the file in custom if the entry point is related to a specific module it is usually a good idea to place this somewhere inside `custom/<TheModule>/`.

In addition we supply an “auth” parameter. If “auth” is true then anyone accessing the entry point will need to be logged into SuiteCRM.

<div class="code-block">
Example 8.3: Adding an entry point entry

------------------------------------------------------------------------

<div class="highlight">
    1 &lt;?php
    2   $entry_point_registry['MyTimeEntryPoint'] = array(
    3       'file' =&gt; 'custom/MyTimeEntryPoint.php',
    4       'auth' =&gt; true,
    5   );

</div>

------------------------------------------------------------------------

</div>
Finally we add the actual logic itself inside custom/MyTimeEntryPoint.php:

<div class="code-block">
Example 8.4: Example entry point that outputs the current time

------------------------------------------------------------------------

<div class="highlight">
    1 &lt;?php
    2 if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');
    3 $date = new DateTime();
    4 echo $date-&gt;format('r');

</div>

------------------------------------------------------------------------

</div>
After a Quick Repair and Rebuild we can access our entry point:

<div class="code-block">
Example 8.5: Custom entry point URL

------------------------------------------------------------------------

<div class="highlight">
    example.com/index.php?entryPoint=MyTimeEntryPoint

</div>

------------------------------------------------------------------------

</div>
and we should see something similar to:

<div class="code-block">
Example 8.6: MyTimeEntryPoint

------------------------------------------------------------------------

<div class="highlight">
    Sun, 15 Mar 2015 13:03:03 +0000

</div>

------------------------------------------------------------------------

</div>
Obviously this is a contrived example but any logic that can be performed elsewhere in SuiteCRM can be performed in an entry point (for example creating or editing [SugarBeans](#chap02.xhtml#working-with-beans-chapter "wikilink")).

</div>
<span id="chap08.xhtml"></span>

<div>
<span class="section-number">9. </span>Language Strings
-------------------------------------------------------

Language strings provide an element of internationalisation to SuiteCRM. It allows specifying different strings to be used in different languages making it much easier to provide translations for modules and customisations. Even if you are only targeting a single language it is still worth using the language string functionality in SuiteCRM because it allows the simple changing of strings within SuiteCRM and it also allows users to customise the labels used in your customisations. There are three main types of language strings that we will cover here.

At the core, the language strings are a key value store. The keys are used throughout SuiteCRM and the values are loaded based on the current language.

Languages are handled in SuiteCRM by prefixing the file name with the IETF language code for the language that this file contains. Here are some examples of different language file names:

<div class="code-block">
Example 9.1: Example language file names

------------------------------------------------------------------------

<div class="highlight">
    # Core Accounts language file for en_us (United States English)
    modules/Accounts/language/en_us.lang.php

    # Core Cases language file for es_es (Spanish as spoken in Spain)
    modules/Cases/language/es_es.lang.php

    # Custom language file for de_de (German)
    custom/Extension/application/Ext/Language/de_de.SomeCustomPackage.php

</div>

------------------------------------------------------------------------

</div>
SuiteCRM will choose the language prefix to be used based on the language the user selected when logging in or the default language if none was selected. Generally when a language file is loaded the default language files and the `en_us` files will also be loaded. These files are then merged. This ensures that there will still be a definition if there are language keys in either `en_us` or the default language that don’t have definitions in the current language. In essence the language “falls back” to the default language and `en_us` if there are missing keys.

### Module Strings

#### Use

Module strings are strings associated with a particular module. These are usually, for example, field labels and panel name labels, but they may be used for anything that is specific to a single module.

#### Definition location

Module strings are defined in the `$mod_strings` array. This is initially defined in
`modules/<TheModule>/language/<LanguageTag>.lang.php`, for example
`modules/Accounts/language/en_us.lang.php`.

#### Customisation location

Customisations can be made to the module strings by adding a new file in
`custom/Extension/modules/<TheModule>/Ext/Language/<LanguageTag>.<Name>.php` (`<Name>` in this case should be used to give it a descriptive name). An example is `custom/Extension/modules/Accounts/Ext/Language/en_us.MyLanguageFile.php`. See the Extensions section for more information on the Extensions folder.

### Application Strings

#### Use

Application strings are used for language strings and labels that are not specific to a single module. Examples of these may include labels that will appear in the headers or footers, labels that appear on search buttons throughout SuiteCRM or labels for pagination controls.

#### Definition location

The application strings are defined in the `$app_strings` array. This is initially defined in
`include/language/<LanguageTag>.lang.php`.

#### Customisation location

Customisations can be made to the application strings in two ways. Firstly you can edit the file
`custom/include/language/<LanguageTag>.lang.php`. However to promote modularity it is recommended that you add a new file in the location
`custom/Extension/application/Ext/Language/<LanguageTag>.<Name>.php`. For example
`custom/Extension/application/Ext/Language/es_es.MyAppLanguageFile.php`. `<Name>` should be used to give the file a descriptive name. See the Extensions section for more information on the Extensions folder.

### Application List Strings

#### Use

Application list strings are used to store the various dropdowns and lists used in SuiteCRM. Most of these are used as options for the various enum fields in SuiteCRM e.g the account type or the opportunity sales stage.

#### Definition location

The application list strings are defined in the `$app_list_strings` array. Similar to the `$app_strings` array this is initially defined in `include/language/en_us.lang.php`.

#### Customisation location

Customisations can be made to the application list strings in two ways. Firstly you can edit the file
`custom/include/language/<LanguageTag>.lang.php`. However to promote modularity it is recommended that you add a new file in the location
`custom/Extension/application/Ext/Language/<LanguageTag>.<Name>.php` (`<Name>` should be used to give the file a descriptive name). For example
`custom/Extension/application/Ext/Language/es_es.MyAppListLanguageFile.php`. See the Extensions section for more information on the Extensions folder.

### Why and when to customise

Generally language strings should be changed from within SuiteCRM using the studio tool. However there are times when it can be simpler to add or modify language strings as described in the previous section. If you are importing a large number of language strings or dropdown options it can be simpler to create a new file to add these values. Similarly if you are adding entirely new functionality, it is usually best to simply add these language strings as new values.

### Usage

Language strings are used automatically throughout SuiteCRM. For example in metadata you can specify the language strings to display for fields. However in some cases you will want to access and use the language strings in custom code. There are several ways to do this.

#### Globals

The `$mod_strings`, `$app_strings` and `$app_list_strings` variables are all global and can be accessed as such. `$app_strings` and `$app_list_strings` will always be available. However `$mod_strings` will only contain the strings for the current module (see the next section for other ways of accessing `$mod_strings`).

<div class="code-block">
Example 9.2: Accessing language strings globally

------------------------------------------------------------------------

<div class="highlight">
     1 function someFunction(){
     2     global $mod_strings, $app_strings, $app_list_strings;
     3     /*
     4      * Grab the label LBL_NAME for the current module
     5      * In most modules this will be the label for the
     6      * name field of the module.
     7      */
     8     $modLabel = $mod_strings['LBL_NAME'];
     9 
    10     $appLabel = $app_strings['LBL_GENERATE_LETTER'];
    11 
    12     /*
    13      * Unlike the previous two examples $appListLabel will be an
    14      * array of the dropdowns keys to it's display labels.
    15      */
    16     $appListLabel = $app_list_strings['aos_quotes_type_dom'];
    17 
    18     //Here we just log out the strings
    19     $GLOBALS['log']-&gt;debug(&quot;The module label is $modLabel&quot;);
    20     $GLOBALS['log']-&gt;debug(&quot;The app label is $appLabel&quot;);
    21     $GLOBALS['log']-&gt;debug(&quot;The app list label is &quot;.print_r($appListLabel,1));
    22 }

</div>

------------------------------------------------------------------------

</div>
#### Translate

As an alternative to using globals or, if you are in a different module than the language string you wish to retrieve you can use the `translate` method.

<div class="code-block">
Example 9.3: `translate` method signature

------------------------------------------------------------------------

<div class="highlight">
    1 translate(
    2         $string,
    3         $mod='',
    4         $selectedValue='')

</div>

------------------------------------------------------------------------

</div>
$string  
The language string to be translated.

$mod  
The module this string should come from. Defaults to the current module if empty.

$selectedValue  
For dropdown strings. This will return the label for the key `$selectedValue`

Here is an example of the above in action. Note that we do not have to worry about whether the label is a Module string, an Application string or an Application list string, as all of these will be checked (in that order - the first matching value will be returned).

<div class="code-block">
Example 9.4: Example `translate` method calls

------------------------------------------------------------------------

<div class="highlight">
     1 function someFunction(){
     2   //Grab the label LBL_NAME for the current module
     3   $modLabel = translate('LBL_NAME');
     4 
     5   //Grab the label LBL_NAME for the AOS_Products module
     6   $productModLabel = translate('LBL_NAME','AOS_Products');
     7 
     8   $appLabel = translate('LBL_GENERATE_LETTER');
     9 
    10   /*
    11    * Return the label for the `Other` option of the `aos_quotes_type_dom`
    12    * We don't care about the module so this is left blank.
    13    */
    14   $appListLabel = translate('aos_quotes_type_dom','','Other');
    15 
    16   //Here we just log out the strings
    17   $GLOBALS['log']-&gt;debug(&quot;The module label is $modLabel&quot;);
    18   $GLOBALS['log']-&gt;debug(&quot;The module label for Products is $productModLabel&quot;);
    19   $GLOBALS['log']-&gt;debug(&quot;The app label is $appLabel&quot;);
    20   $GLOBALS['log']-&gt;debug(&quot;The app list label is &quot;.print_r($appListLabel,1));
    21 }

</div>

------------------------------------------------------------------------

</div>
#### JavaScript

Finally, you may be using JavaScript (for example in a view), and wish to display a language string. For this you can use the `SUGAR.language.get` method, which is similar to the `translate` method in example 9.3.

<div class="code-block">
Example 9.5: `SUGAR.language.get` method signature

------------------------------------------------------------------------

<div class="highlight">
    1 SUGAR.language.get(
    2               module,
    3               str
    4 );

</div>

------------------------------------------------------------------------

</div>
module  
The module a language string will be returned for. You should supply `app_strings` or

`app_list_strings` if the label you wish to retrieve is not a module string.

str  
The key you want to retrieve a label for.

<div class="code-block">
Example 9.6: Example `SUGAR.language.get` method calls

------------------------------------------------------------------------

<div class="highlight">
     1 function someFunction(){
     2 
     3   /*
     4    * Grab the label LBL_NAME for AOS_Products
     5    * Note that, unlike the translate function in example 9.3
     6    * the module name is required.
     7    */
     8 
     9   var modLabel = SUGAR.language.get('AOS_Products', 'LBL_NAME');
    10 
    11   /*
    12    * As mentioned above we explicitly need to pass if we are retrieving
    13    * an app_string or app_list_string
    14    */
    15   var appLabel = SUGAR.language.get('app_strings', 'LBL_GENERATE_LETTER');
    16   var appListLabel = SUGAR.language.get('app_list_strings',
    17                                         'aos_quotes_type_dom');
    18 
    19   //Here we just log out the strings
    20   console.log(&quot;The module label is &quot;+modLabel);
    21   console.log(&quot;The app label is &quot;+appLabel);
    22   console.log(&quot;The app list label is &quot;+appListLabel);
    23 }

</div>

------------------------------------------------------------------------

</div>
</div>
<span id="chap09.xhtml"></span>

<div>
<span class="section-number">10. </span>Config
----------------------------------------------

### The config files

There are two main config files in SuiteCRM, both of which are in the root SuiteCRM folder. These are `config.php` and `config_override.php`. The definitions in here provide various configuration options for SuiteCRM. All the way from the details used to access the database to how many entries to show per page in the list view. Most of these options are accessible from the SuiteCRM administration page. However some are only definable in the config files.

#### config.php

This is the main SuiteCRM config file and includes important information like the database settings and the current SuiteCRM version.

Generally settings in this file wont be changed by hand. An exception to this is if SuiteCRM has been moved or migrated. In which case you may need to change the database settings and the site\_url. Let’s look at the database settings first:

<div class="code-block">
Example 10.1: Database config definition

------------------------------------------------------------------------

<div class="highlight">
     1 'dbconfig' =&gt;
     2 array (
     3   'db_host_name' =&gt; 'localhost',
     4   'db_host_instance' =&gt; 'SQLEXPRESS',
     5   'db_user_name' =&gt; 'dbuser',
     6   'db_password' =&gt; 'dbpass',
     7   'db_name' =&gt; 'dbname',
     8   'db_type' =&gt; 'mysql',
     9   'db_port' =&gt; '',
    10   'db_manager' =&gt; 'MysqliManager',
    11 ),

</div>

------------------------------------------------------------------------

</div>
Here we can see this instance is setup to access a local MySQL instance using the username/password dbuser/dbpass and accessing the database named ‘dbname’.

The site url settings are even simpler:

<div class="code-block">
Example 10.2: Setting the site URL

------------------------------------------------------------------------

<div class="highlight">
      'site_url' =&gt; 'http://example.com/suitecrm',

</div>

------------------------------------------------------------------------

</div>
The site url for the above is simply ‘http://example.com/suitecrm’ if we were moving this instance to, for example, suite.example.org, then we can simply place that value in the file.

These are generally the only two instances where you would directly change `config.php`. For other changes you would either make the change through SuiteCRM itself or you would use the
`config_override.php` file.

#### config\_override.php

`config_override.php` allows you to make config changes without risking breaking the main config file. This is achieved quite simply by adding, editing or removing items from the $sugar\_config variable. The `config_override.php` file will be merged with the existing config allowing, as the name suggests, overriding the config. For example in config\_override.php we can add our own, new, config item:

<div class="code-block">
Example 10.3: Adding a custom config value

------------------------------------------------------------------------

<div class="highlight">
    $sugar_config['enable_the_awesome'] = true;

</div>

------------------------------------------------------------------------

</div>
or we can edit an existing config option in a very similar manner by simply overwriting it:

<div class="code-block">
Example 10.4: Overwriting an existing config value

------------------------------------------------------------------------

<div class="highlight">
    $sugar_config['logger']['level'] = 'debug';

</div>

------------------------------------------------------------------------

</div>
### Using config options

We may want to access config options in custom code (or as detailed above if we have created our own config setting we may want to use that). We can easily get the config using the php global keyword:

<div class="code-block">
Example 10.5: Accessing a config setting within SuiteCRM

------------------------------------------------------------------------

<div class="highlight">
    1 function myCustomLogic(){
    2   //Get access to config
    3   global $sugar_config;
    4   //use the config values
    5   if(!empty($sugar_config['enable_the_awesome'])){
    6     doTheAwesome();
    7   }
    8 }

</div>

------------------------------------------------------------------------

</div>
</div>
<span id="chap10.xhtml"></span>

<div>
<span class="section-number">11. </span>Logging
-----------------------------------------------

### Logging messages

Logging in SuiteCRM is achieved by accessing the log global. Accessing an instance of the logger is as simple as

<div class="code-block">
Example 11.1: Accessing the log

------------------------------------------------------------------------

<div class="highlight">
    $GLOBALS['log']

</div>

------------------------------------------------------------------------

</div>
This can then be used to log a message. Each log level is available as a method. For example:

<div class="code-block">
Example 11.2: Logging messages

------------------------------------------------------------------------

<div class="highlight">
    1 $GLOBALS['log']-&gt;debug('This is a debug message');
    2 $GLOBALS['log']-&gt;error('This is an error message');

</div>

------------------------------------------------------------------------

</div>
This will produce the following output:

<div class="code-block">
Example 11.3: Logging messages example output

------------------------------------------------------------------------

<div class="highlight">
    1 Tue Apr 28 16:52:21 2015 [15006][1][DEBUG] This is a debug message
    2 Tue Apr 28 16:52:21 2015 [15006][1][ERROR] This is an error message

</div>

------------------------------------------------------------------------

</div>
### Logging output

The logging output displays the following information by default:

<div class="code-block">
Example 11.4: Logging messages example output

------------------------------------------------------------------------

<div class="highlight">
    &lt;Date&gt; [&lt;ProcessId&gt;][&lt;UserId&gt;][&lt;LogLevel&gt;] &lt;LogMessage&gt;

</div>

------------------------------------------------------------------------

</div>
`<Date>`  
The date and time that the message was logged.

`<ProcessId>`  
The PHP process id.

`<UserId>`  
The ID of the user that is logged into SuiteCRM.

`<LogLevel>`  
The log level for this log message.

`<LogMessage>`  
The contents of the log message.

### Log levels

Depending on the level setting in admin some messages will not be added to the log e.g if your logger is set to `error` then you will only see log levels of `error` or higher (`error`, `fatal` and `security`).

The default log levels (in order of verbosity) are:

-   `debug`
-   `info`
-   `warn`
-   `deprecated`
-   `error`
-   `fatal`
-   `security`

Generally on a production instance you will use the less verbose levels (probably `error` or `fatal`). However whilst you are developing you can use whatever level you prefer. I prefer the most verbose level - `debug`.

</div>
<span id="chap11.xhtml"></span>

<div>
<span class="section-number">12. </span>Logic Hooks
---------------------------------------------------

### Intro

Logic hooks allow you to hook into various events in SuiteCRM to fire custom code. This can allow you to, for example, make a call to an external API, or to create a new record if certain events occur.

### Types

Logic hooks can occur in three contexts. These contexts are Application Hooks, Module Hooks and User Hooks. These are detailed below.

### Application Hooks

Application hooks are hooks which are fired in the application context (that is, they are not fired against a particular module). These hooks must be defined in the top level logic hook (i.e. `custom/modules/logic_hooks.php`).

after\_entry\_point  
Called after SuiteCRM has initialised but before any other processing is carried out.

after\_ui\_footer  
Called after the UI footer.

after\_ui\_frame  
Fired after the UI has been displayed but before the footer has been displayed.

server\_round\_trip  
Fired at the end of every page request.

### User Hooks

User hooks are fired for certain login/logout actions. Similar to Application Hooks, these hooks must be defined in the top level logic hook (i.e. custom/modules/logic\_hooks.php).

after\_login  
Fired after a user logs in to SuiteCRM .

after\_logout  
Fired when a user logs out of SuiteCRM.

before\_logout  
Fired before a user logs out of SuiteCRM.

login\_failed  
Fired when a user attempts to login to SuiteCRM but the login fails.

### Module Hooks

Module Hooks are called on various record actions for a specific module.

after\_delete  
Fired when a record is deleted.

after\_relationship\_add  
Fired after a relationship is added between two records. Note that this may be called twice, once for each side of the relationship.

after\_relationship\_delete  
Fired after a relationship between two records is deleted.

after\_restore  
Fired after a record is undeleted.

after\_retrieve  
Fired after a record is retrieved from the DB.

after\_save  
Fired after a record is saved. Note that due to some peculiarities some related modules may not be persisted to the database. The logic hook is fired within the SugarBean classes save method. Some implementing classes may save related beans after this method returns. A notable example of this is the saving of email addresses in Company modules.

before\_delete  
Fired before a record is deleted.

before\_relationship\_add  
Fired before a relationship is added between two records. Note that this may be called twice, once for each side of the relationship.

before\_relationship\_delete  
Fired before a relationship between two records is deleted. Note that this may be called twice, once for each side of the relationship.

before\_restore  
Fired before a record is undeleted.

before\_save  
Fired before a record is saved.

handle\_exception  
Fired when an exception occurs in a record.

process\_record  
Fired when a record is processed ready to be displayed in list views or dashlets.

### Job Queue Hooks

Job queue hooks are fired for scheduler jobs. Similar to application hooks these hooks must be defined in the top level logic hook (i.e. `custom/modules/logic_hooks.php`).

job\_failure  
Fired when a scheduled job either returns false to signify failure or throws an exception and it will not be retried. See the section on [Scheduled Tasks](#chap12.xhtml#scheduled-tasks-chapter "wikilink").

job\_failure\_retry  
Fired when a scheduled job either returns false to signify failure or throws an exception but it will be retried. See the section on [Scheduled Tasks](#chap12.xhtml#scheduled-tasks-chapter "wikilink").

### Implementing

Depending on the Logic Hook type logic hooks are either placed into
`custom/modules/Logic_Hooks.php` or `custom/modules/<TargetModule>/Logic_Hooks.php`.

#### Logic\_Hooks.php

The logic hook file itself specifies which logic hooks to fire on this event. It looks something like this:

<div class="code-block">
Example 12.1: Logic hook file

------------------------------------------------------------------------

<div class="highlight">
     1 &lt;?php
     2 // Do not store anything in this file that is not part of the array or the hook
     3 //version.  This file will be automatically rebuilt in the future.
     4  $hook_version = 1;
     5 $hook_array = Array();
     6 // position, file, function
     7 $hook_array['before_save'] = Array();
     8 $hook_array['before_save'][] = Array(
     9                               77,
    10                               'updateGeocodeInfo',
    11                               'custom/modules/Cases/CasesJjwg_MapsLogicHook.php',
    12                               'CasesJjwg_MapsLogicHook',
    13                               'updateGeocodeInfo');
    14 $hook_array['before_save'][] = Array(
    15                               10,
    16                               'Save case updates',
    17                               'modules/AOP_Case_Updates/CaseUpdatesHook.php',
    18                               'CaseUpdatesHook',
    19                               'saveUpdate');
    20 $hook_array['before_save'][] = Array(
    21                               11,
    22                               'Save case events',
    23                               'modules/AOP_Case_Events/CaseEventsHook.php',
    24                               'CaseEventsHook',
    25                               'saveUpdate');
    26 $hook_array['before_save'][] = Array(
    27                               12,
    28                               'Case closure prep',
    29                               'modules/AOP_Case_Updates/CaseUpdatesHook.php',
    30                               'CaseUpdatesHook',
    31                               'closureNotifyPrep');
    32 $hook_array['before_save'][] = Array(
    33                               1,
    34                               'Cases push feed',
    35                               'custom/modules/Cases/SugarFeeds/CaseFeed.php',
    36                               'CaseFeed',
    37                               'pushFeed');
    38 $hook_array['after_save'] = Array();
    39 $hook_array['after_save'][] = Array(
    40                               77,
    41                               'updateRelatedMeetingsGeocodeInfo',
    42                               'custom/modules/Cases/CasesJjwg_MapsLogicHook.php',
    43                               'CasesJjwg_MapsLogicHook',
    44                               'updateRelatedMeetingsGeocodeInfo');
    45 $hook_array['after_save'][] = Array(
    46                               10,
    47                               'Send contact case closure email',
    48                               'modules/AOP_Case_Updates/CaseUpdatesHook.php',
    49                               'CaseUpdatesHook',
    50                               'closureNotify');
    51 $hook_array['after_relationship_add'] = Array();
    52 $hook_array['after_relationship_add'][] = Array(
    53                               77,
    54                               'addRelationship',
    55                               'custom/modules/Cases/CasesJjwg_MapsLogicHook.php',
    56                               'CasesJjwg_MapsLogicHook',
    57                               'addRelationship');
    58 $hook_array['after_relationship_add'][] = Array(
    59                               9,
    60                               'Assign account',
    61                               'modules/AOP_Case_Updates/CaseUpdatesHook.php',
    62                               'CaseUpdatesHook',
    63                               'assignAccount');
    64 $hook_array['after_relationship_add'][] = Array(
    65                               10,
    66                               'Send contact case email',
    67                               'modules/AOP_Case_Updates/CaseUpdatesHook.php',
    68                               'CaseUpdatesHook',
    69                               'creationNotify');
    70 $hook_array['after_relationship_delete'] = Array();
    71 $hook_array['after_relationship_delete'][] = Array(
    72                               77,
    73                               'deleteRelationship',
    74                               'custom/modules/Cases/CasesJjwg_MapsLogicHook.php',
    75                               'CasesJjwg_MapsLogicHook',
    76                               'deleteRelationship');

</div>

------------------------------------------------------------------------

</div>
Let’s go through each part of the file.

<div class="code-block">
<div class="highlight">
    4 $hook_version = 1;

</div>
</div>
This sets the hook version that we are using. Currently there is only one version so this line is unused.

<div class="code-block">
<div class="highlight">
    5 $hook_array = Array();

</div>
</div>
Here we set up an empty array for our Logic Hooks. This should always be called $hook\_array.

<div class="code-block">
<div class="highlight">
    7 $hook_array['before_save'] = Array();

</div>
</div>
Here we are going to be adding some before\_save hooks so we add an empty array for that key.

<div class="code-block">
<div class="highlight">
     8 $hook_array['before_save'][] = Array(
     9                               77,
    10                               'updateGeocodeInfo',
    11                               'custom/modules/Cases/CasesJjwg_MapsLogicHook.php',
    12                               'CasesJjwg_MapsLogicHook',
    13                               'updateGeocodeInfo');

</div>
</div>
Finally we reach an interesting line. This adds a new logic hook to the before\_save hooks. This array contains 5 entries which define this hook. These are:

##### Sort order

The first argument (77) is the sort order for this hook. The logic hook array is sorted by this value. If you wish for a hook to fire earlier you should use a lower number. If you wish for a hook to be fired later you should use a higher number. The numbers themselves are arbitrary.

##### Hook label

The second argument (‘updateGeocodeInfo’) is simply a label for the logic hook. This should be something short but descriptive.

##### Hook file

The third argument is where the actual class for this hook is. In this case it is in a file called `custom/modules/Cases/CasesJjwg_MapsLogicHook.php`. Generally you will want the files to be somewhere in custom and it is usual to have them in `custom/modules/<TheModule>/<SomeDescriptiveName>.php` or `custom/modules/<SomeDescriptiveName>.php` for Logic Hooks not targeting a specific module. However the files can be placed anywhere.

##### Hook class

The fourth argument is the class name for the Logic Hook class. In this case
`CasesJjwg_MapsLogicHook`. It is usual for the class name to match the file name but this is not required.

##### Hook method

The fifth, and final, argument is the method that will be called on the class. In this case `updateGeocodeInfo`.

#### Adding your own logic hooks

When adding logic hooks you should make full use of the Extensions framework (see the section on Extensions). This involves creating a file in
`custom/Extension/application/Ext/LogicHooks/` for application hooks and
`custom/Extension/modules/<TheModule>/Ext/LogicHooks/` for module specific hooks. These files can then add to/alter the `$hook_array` as appropriate.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><div class="figure">
<img src="images/leanpub_info-circle.png" title="information" alt="information" width="50" />
<p class="caption">information</p>
</div></td>
<td><p>After adding a new logic hook it is necessary to perform a quick repair and rebuild in the admin menu for this to be picked up.</p></td>
</tr>
</tbody>
</table>

#### Logic Hook function

The logic hook function itself will vary slightly based on the logic hook type. For module hooks it will appear similar to:

<div class="code-block">
Example 12.2: Example logic hook method

------------------------------------------------------------------------

<div class="highlight">
    1     class SomeClass
    2     {
    3         function someMethod($bean, $event, $arguments)
    4         {
    5           //Custom Logic
    6         }
    7     }

</div>

------------------------------------------------------------------------

</div>
Application logic hooks omit the $bean argument:

<div class="code-block">
Example 12.3: Example logic hook method for application hooks

------------------------------------------------------------------------

<div class="highlight">
    1     class SomeClass
    2     {
    3         function someMethod($event, $arguments)
    4         {
    5           //Custom Logic
    6         }
    7     }

</div>

------------------------------------------------------------------------

</div>
##### $bean (`SugarBean`)

The $bean argument passed to your logic hook is usually the bean that the logic hook is being performed on. For User Logic Hooks this will be the current User object. For module logic hooks (such as `before_save`) this will be the record that is being saved. For job queue logic hooks this will be the SchedulersJob bean. Note that for Application Logic Hook this argument is not present.

##### $event (`string`)

The $event argument contains the logic hook event e.g `process_record`, `before_save`,
`after_delete` etc.

##### $arguments (`array`)

The $arguments argument contains any additional details of the logic hook event. I.e. in the case of before\_relationship\_add this will contain details of the related modules.

### Tips

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><div class="figure">
<img src="images/leanpub_info-circle.png" title="information" alt="information" width="50" />
<p class="caption">information</p>
</div></td>
<td><h4 id="triggering-extra-logic-hooks">Triggering extra logic hooks</h4>
<p>If you are performing certain actions that may trigger another logic hook (such as saving a bean) then you need to be aware that this will trigger the logic hooks associated with that bean and action. This can be troublesome if this causes a logic hook loop of saves causing further saves. One way around this is to simply be careful of the hooks that you may trigger. If doing so is unavoidable you can usually set an appropriate flag on the bean and then check for that flag in subsequent hooks.</p></td>
</tr>
</tbody>
</table>

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><div class="figure">
<img src="images/leanpub_info-circle.png" title="information" alt="information" width="50" />
<p class="caption">information</p>
</div></td>
<td><h4 id="think-of-the-user">Think of the user</h4>
<p>Most logic hooks will cause additional code which can degrade the users experience. If you have long running code in the after_save the user will need to wait for that code to run. This can be avoided by either ensuring the code runs quickly or by using the Job Queue (see the Job Queue chapter for more information).</p></td>
</tr>
</tbody>
</table>

</div>
<span id="chap12.xhtml"></span>

<div>
<span class="section-number">13. </span>Scheduled Tasks
-------------------------------------------------------

### Intro

Scheduled tasks are performed in SuiteCRM by the scheduler module. Jobs are placed into the queue either through the defined scheduled tasks or, for one off tasks, by code creating job objects. Note that both scheduled tasks and using the job queue requires that you have the schedulers set up. This will vary depending on your system but usually requires adding an entry either to Cron (for Linux systems) or to the windows scheduled tasks (for windows). Opening the scheduled tasks page within SuiteCRM will let you know the format for the entry.

### Scheduler

Scheduled tasks allow SuiteCRM to perform recurring tasks. Examples of these which ship with SuiteCRM include checking for incoming mail, sending email reminder notifications and indexing the full text search. What if you want to create your own tasks?

SuiteCRM lets you define your own Scheduler. We do this by creating a file in
`custom/Extension/modules/Schedulers/Ext/ScheduledTasks/`. You can give this file a name of your choice but it is more helpful to give it a descriptive name. Let’s create a simple file named
`custom/Extension/modules/Schedulers/Ext/ScheduledTasks/CleanMeetingsScheduler.php`. This will add a new job to the job strings and a new method that the scheduler will call:

<div class="code-block">
Example 13.1: Example Clean Meetings Scheduler

------------------------------------------------------------------------

<div class="highlight">
     1 &lt;?php
     2 /*
     3  * We add the method name to the $job_strings array.
     4  * This is the method that jobs for this scheduler will call.
     5  */
     6 $job_strings[] = 'cleanMeetingsScheduler';
     7 
     8 /**
     9  * Example scheduled job to change any 'Planned' meetings older than a month
    10  * to 'Not Held'.
    11  * @return bool
    12  */
    13 function cleanMeetingsScheduler(){
    14   //Get the cutoff date for which meetings will be considered
    15  $cutOff = new DateTime('now - 1 month');
    16  $cutOff = $cutOff-&gt;format('Y-m-d H:i:s');
    17 
    18  //Get an instance of the meetings bean for querying
    19   //see the Working With Beans chapter.
    20   $bean = BeanFactory::getBean('Meetings');
    21 
    22   //Get the list of meetings older than the cutoff that are marked as Planned
    23   $query = &quot;meetings.date_start &lt; '$cutOff' AND meetings.status = 'Planned'&quot;;
    24   $meetings = $bean-&gt;get_full_list('',$query);
    25 
    26   foreach($meetings as $meeting){
    27     //Mark each meeting as Not Held
    28     $meeting-&gt;status = 'Not Held';
    29     //Save the meeting changes
    30     $meeting-&gt;save();
    31   }
    32   //Signify we have successfully ran
    33   return true;
    34 }

</div>

------------------------------------------------------------------------

</div>
We also make sure that we add a language file in
`custom/Extension/modules/Schedulers/Ext/Language/en_us.cleanMeetingsScheduler.php` again, the name of the file doesn’t matter but it is helpful to use something descriptive. This will define the language string for our job so the user sees a nice label. See the section on language strings for more information. The key for the mod strings will be LBL\_UPPERMETHODNAME. In our case our method name is `cleanMeetingsScheduler` so our language label key will be `LBL_CLEANMEETINGSSCHEDULER`.

<div class="code-block">
Example 13.2: Example Language string for Clean Meetings Scheduler

------------------------------------------------------------------------

<div class="highlight">
    1 &lt;?php
    2 //We add the mod string for our method here.
    3 $mod_strings['LBL_CLEANMEETINGSSCHEDULER'] = 'Mark old, planned meetings as Not \
    4 Held';

</div>

------------------------------------------------------------------------

</div>
If we perform a repair and rebuild our method will now be packaged up into the scheduler ext file (see the Extensions section for more information on this process) and will be available in the schedulers page. Note that for any changes to the scheduler method you will need to perform another quick repair and rebuild - even in developer mode. We can now create a new scheduler to call our new method:

<div class="image-with-caption center">
![Creating a scheduler that uses our new method](images/CreateMeetingsScheduler.png "fig:Creating a scheduler that uses our new method") Creating a scheduler that uses our new method

</div>
This will now behave just like any other scheduler and we can have this run as often (or as rarely) as we would like. Take care here. The default frequency is every one minute. If your task is heavy duty or long running this may not be what you would prefer. Here we settle for once a day.

### Job Queue

Sometimes you will require code to perform a long running task but you do not need the user to wait for this to be completed. A good example of this is sending an email in a logic hook (see the Logic Hooks chapter for information on these). Assuming we have the following logic hook:

<div class="code-block">
Example 13.3: Example Email sending Logic Hook

------------------------------------------------------------------------

<div class="highlight">
     1 class SomeClass
     2 {
     3     function SomeMethod($bean, $event, $arguments)
     4     {
     5 
     6         //Perform some setup of the email class
     7         require_once &quot;include/SugarPHPMailer.php&quot;;
     8         $mailer=new SugarPHPMailer();
     9         $admin = new Administration();
    10         $admin-&gt;retrieveSettings();
    11         $mailer-&gt;prepForOutbound();
    12         $mailer-&gt;setMailerForSystem();
    13         $admin = new Administration();
    14         $admin-&gt;retrieveSettings();
    15         $admin-&gt;settings['notify_fromname']
    16         $mailer-&gt;From     = $admin-&gt;settings['notify_fromaddress']
    17         $mailer-&gt;FromName = $emailSettings['from_name'];
    18         $mailer-&gt;IsHTML(true);
    19 
    20         //Add message and recipient.
    21         //We could go all out here and load and populate an email template
    22         //or get the email address from the bean
    23         $mailer-&gt;Subject = 'My Email Notification! '.$bean-&gt;name;
    24         $mailer-&gt;Body = $event. ' fired for bean '.$bean-&gt;name;
    25         $mailer-&gt;AddAddress('Jim@example.com');
    26         return $mailer-&gt;Send();
    27     }
    28 }

</div>

------------------------------------------------------------------------

</div>
This will work fine. However you do not want the user to have to wait for the email to be sent out as this can cause the UI to feel sluggish. Instead you can create a Job and place it into the job queue and this will be picked by the scheduler. Let’s look at an example of how you would do this.

First we want our Logic Hook class to create the scheduled job:

<div class="code-block">
Example 13.4: Example Scheduled Job Creation

------------------------------------------------------------------------

<div class="highlight">
     1 class SomeClass
     2 {
     3     function SomeMethod($bean, $event, $arguments)
     4     {
     5       require_once 'include/SugarQueue/SugarJobQueue.php';
     6       $scheduledJob = new SchedulersJob();
     7 
     8       //Give it a useful name
     9       $scheduledJob-&gt;name = &quot;Email job for {$bean-&gt;module_name} {$bean-&gt;id}&quot;;
    10 
    11       //Jobs need an assigned user in order to run. You can use the id
    12       //of the current user if you wish, grab the assigned user from the
    13       //current bean or anything you like.
    14       //Here we use the default admin user id for simplicity
    15       $scheduledJob-&gt;assigned_user_id = '1';
    16 
    17       //Pass the information that our Email job will need
    18       $scheduledJob-&gt;data = json_encode(array(
    19                                             'id' =&gt; $bean-&gt;id,
    20                                             'module' =&gt; $bean-&gt;module_name)
    21                                         );
    22 
    23       //Tell the scheduler what class to use
    24       $scheduledJob-&gt;target = &quot;class::BeanEmailJob&quot;;
    25 
    26       $queue = new SugarJobQueue();
    27       $queue-&gt;submitJob($scheduledJob);
    28     }
    29 }

</div>

------------------------------------------------------------------------

</div>
Next we create the BeanEmailJob class. This is placed into the
`custom/Extensions/modules/Schedulers/Ext/ScheduledTasks/` directory with the same name as the class. So in our example we will have:
`custom/Extensions/modules/Schedulers/Ext/ScheduledTasks/BeanEmailJob.php`

<div class="code-block">
Example 13.5: Example Scheduler job

------------------------------------------------------------------------

<div class="highlight">
     1 class BeanEmailJob implements RunnableSchedulerJob
     2 {
     3   public function run($arguments)
     4   {
     5 
     6     //Only different part of the email code.
     7     //We grab the bean using the supplied arguments.
     8     $arguments = json_decode($arguments,1);
     9     $bean = BeanFactory::getBean($arguments['module'],$arguments['id']);
    10 
    11     //Perform some setup of the email class
    12     require_once &quot;include/SugarPHPMailer.php&quot;;
    13     $mailer=new SugarPHPMailer();
    14     $admin = new Administration();
    15     $admin-&gt;retrieveSettings();
    16     $mailer-&gt;prepForOutbound();
    17     $mailer-&gt;setMailerForSystem();
    18     $admin = new Administration();
    19     $admin-&gt;retrieveSettings();
    20     $mailer-&gt;From     = $admin-&gt;settings['notify_fromaddress'];
    21     $mailer-&gt;FromName = $emailSettings['from_name'];
    22     $mailer-&gt;IsHTML(true);
    23 
    24     //Add message and recipient.
    25     //We could go all out here and load and populate an email template
    26     //or get the email address from the bean
    27     $mailer-&gt;Subject = 'My Email Notification! '.$bean-&gt;name;
    28     $mailer-&gt;Body = $event. ' fired for bean '.$bean-&gt;name;
    29     $mailer-&gt;AddAddress('Jim@example.com');
    30     return $mailer-&gt;Send();
    31   }
    32   public function setJob(SchedulersJob $job)
    33   {
    34     $this-&gt;job = $job;
    35   }
    36 }

</div>

------------------------------------------------------------------------

</div>
Now whenever a user triggers the hook it will be much quicker since we are simply persisting a little info to the database. The scheduler will run this in the background.

#### Retries

Occasionally you may have scheduled jobs which could fail intermittently. Perhaps you have a job which calls an external API. If the API is unavailable it would be unfortunate if the job failed and was never retried. Fortunately the SchedulersJob class has two properties which govern how retries are handled. These are `requeue` and `retry_count`.

`requeue`  
Signifies that this job is eligible for retries.

`retry_count`  
Signifies how many retries remain for this job. If the job fails this value will be decremented.

We can revisit our previous example and add two retries:

<div class="code-block">
Example 13.6: Setting the retry count on a scheduled job

------------------------------------------------------------------------

<div class="highlight">
     6       $scheduledJob = new SchedulersJob();
     7 
     8       //Give it a useful name
     9       $scheduledJob-&gt;name = &quot;Email job for {$bean-&gt;module_name} {$bean-&gt;id}&quot;;
    10 
    11       //Jobs need an assigned user in order to run. You can use the id
    12       //of the current user if you wish, grab the assigned user from the
    13       //current bean or anything you like.
    14       //Here we use the default admin user id for simplicity
    15       $scheduledJob-&gt;assigned_user_id = '1';
    16 
    17       //Pass the information that our Email job will need
    18       $scheduledJob-&gt;data = json_encode(array(
    19                                             'id' =&gt; $bean-&gt;id,
    20                                             'module' =&gt; $bean-&gt;module_name)
    21                                         );
    22 
    23       //Tell the scheduler what class to use
    24       $scheduledJob-&gt;target = &quot;class::BeanEmailJob&quot;;
    25 
    26       //Mark this job for 2 retries.
    27       $scheduledJob-&gt;requeue = true;
    28       $scheduledJob-&gt;retry = 2;

</div>

------------------------------------------------------------------------

</div>
See the section on [logic hooks](#chap11.xhtml#logic-hooks-chapter "wikilink") for more information on how job failures can be handled.

### Debugging

With Scheduled tasks and jobs running in the background it can sometimes be difficult to determine what is going on when things go wrong. If you are debugging a scheduled task the the scheduled task page is a good place to start. For both scheduled tasks and job queue tasks you can also check the job\_queue table. For example, in MySQL we can check the last five scheduled jobs:

<div class="code-block">
Example 13.7: Example MySQL query for listing jobs

------------------------------------------------------------------------

<div class="highlight">
    SELECT * FROM job_queue ORDER BY date_entered DESC LIMIT 5

</div>

------------------------------------------------------------------------

</div>
This will give us information on the last five jobs. Alternatively we can check on specific jobs:

<div class="code-block">
Example 13.8: Example MySQL query for listing BeanEmailJobs

------------------------------------------------------------------------

<div class="highlight">
    SELECT * FROM job_queue WHERE target = 'class::BeanEmailJob'

</div>

------------------------------------------------------------------------

</div>
In either case this will give details for the job(s):

<div class="code-block">
Example 13.9: Example MySQL list of jobs

------------------------------------------------------------------------

<div class="highlight">
    *************************** 1. row ***************************
    assigned_user_id: 1
                  id: 6cdf13d5-55e9-946e-9c98-55044c5cecee
                name: Email job for Accounts 103c4c9b-336f-0e87-782e-5501defb5900
             deleted: 0
        date_entered: 2015-03-14 14:58:15
       date_modified: 2015-03-14 14:58:25
        scheduler_id:
        execute_time: 2015-03-14 14:58:00
              status: done
          resolution: success
             message: NULL
              target: class::BeanEmailJob
                data: {&quot;id&quot;:&quot;103c4c9b-336f-0e87-782e-5501defb5900&quot;,&quot;module&quot;:&quot;Account\
    s&quot;}
             requeue: 0
         retry_count: NULL
       failure_count: NULL
           job_delay: 0
              client: CRON3b06401793b3975cd00c0447c071ef9a:7781
    percent_complete: NULL
    1 row in set (0.00 sec)

</div>

------------------------------------------------------------------------

</div>
Here we can check the status, resolution and message fields. If the status is `queued` then either the scheduler has not yet run or it isn’t running. Double check your Cron settings if this is the case.

It may be the case that the job has ran but failed for some reason. In this case you will receive a message telling you to check the logs. Checking the logs usually provides enough information, particularly if you have made judicious use of logging (see the chapter on logging) in your job.

It is possible that the job is failing outright, in which case your logging may not receive output before the scheduler exits. In this case you can usually check your PHP logs.

As a last resort you can manually run the scheduler from the SuiteCRM directory using:

<div class="code-block">
Example 13.10: Running the scheduler manually

------------------------------------------------------------------------

<div class="highlight">
    php -f cron.php

</div>

------------------------------------------------------------------------

</div>
Using this in addition to outputting any useful information should track down even the oddest of bugs.

</div>
<span id="chap13.xhtml"></span>

<div>
<span class="section-number">14. </span>Extension Framework
-----------------------------------------------------------

### Introduction

The extension framework provides a means to modify various application data inside SuiteCRM. For example it provides a way to add or modify vardefs, scheduled tasks, language strings and more. In general a folder is provided in `custom/Extension` (the exact path depends on the extension). This folder is then scanned for files which will be consolidated into a single ext file which SuiteCRM will then read and use. In this way it is possible for developers to add a new file to affect the behaviour of SuiteCRM rather than altering existing files. This makes the changes more modular and allows the easy addition or removal of changes. Additionally, because these files are all consolidated it means that there is no affect on performance of checking a (possibly large) number of files. This is only done when performing a repair and rebuild in the admin menu.

### Standard Extensions

List of standard SuiteCRM extensions

| Extension Directory  | Compiled file                                           | Module         | Description                                                                                                                                                        |
|----------------------|---------------------------------------------------------|----------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| ActionViewMap        | action\_view\_map.ext.php                               |                | Used to map actions for a module to a specified view.                                                                                                              |
| ActionFileMap        | action\_file\_map.ext.php                               |                | Used to map actions for a module to a specified file.                                                                                                              |
| ActionReMap          | action\_remap.ext.php                                   |                | Used to map actions for a module to existing actions.                                                                                                              |
| Administration       | administration.ext.php                                  | Administration | Used to add new sections to the administration panel.                                                                                                              |
| EntryPointRegistry   | entry\_point\_registry.ext.php                          | application    | Used to add new entry points to SuiteCRM. See the chapter on [Entry Points](#chap07.xhtml#entry-point-chapter "wikilink").                                         |
| Extensions           | extensions.ext.php                                      | application    | Used to add new extension types.                                                                                                                                   |
| FileAccessControlMap | file\_access\_control\_map.ext.php                      |                | Used to add, update or delete entries in the access control lists for files.                                                                                       |
| Language             | N/A<sup>[1](#chap13.xhtml#fn-langNote "wikilink")</sup> |                | Used to add, update or delete language strings for both modules and app strings. See the chapter on [Language Strings](#chap08.xhtml#language-chapter "wikilink"). |
| Layoutdefs           | layoutdefs.ext.php                                      |                | Used to add, update or delete subpanel definitions for a module.                                                                                                   |
| GlobalLinks          | links.ext.php                                           | application    | Used to add, update or delete global links (the list of links that appear in the top right of the SuiteCRM UI).                                                    |
| LogicHooks           | logichooks.ext.php                                      |                | Used to add, update or delete logic hooks. See the chapter on [Logic Hooks](#chap11.xhtml#logic-hooks-chapter "wikilink").                                         |
| Include              | modules.ext.php                                         | application    | Used to register new beans and modules.                                                                                                                            |
| Menus                | menu.ext.php                                            |                | Used to add, update or delete the menu links for each module.                                                                                                      |
| ScheduledTasks       | scheduledtasks.ext.php                                  | Schedulers     | Used to add new scheduled tasks. See the chapter on [Scheduled Tasks](#chap12.xhtml#scheduled-tasks-chapter "wikilink").                                           |
| UserPage             | userpage.ext.php                                        | Users          | Unused                                                                                                                                                             |
| Utils                | custom\_utils.ext.php                                   | application    | Used to add new utility methods.                                                                                                                                   |
| Vardefs              | vardefs.ext.php                                         |                | Used to add, update or delete vardefs for a module. See the section on [Vardefs](#chap03.xhtml#vardefs-chapter "wikilink").                                        |
| JSGroupings          | jsgroups.ext.php                                        |                | Used to add, update or delete JavaScript groupings.                                                                                                                |
| Actions              | actions.ext.php                                         | AOW\_Actions   | Used to add new WorkFlow actions.                                                                                                                                  |

### Custom Extensions

Interestingly the extension framework can be used to add new extensions. This allows you to create customisations that are easily customised by others (in a similar manner to, for example, how vardefs can be added - see the chapter on [Vardefs](#chap03.xhtml#vardefs-chapter "wikilink")).

To create a custom extension you simply add a new file in
`custom/Extension/application/Ext/Extensions`. This can be given a name of your choosing. Our example will use
`custom/Extension/application/Ext/Extensions/SportsList.php` and will look like:

<div class="code-block">
Example 14.1: Adding an entry point entry

------------------------------------------------------------------------

<div class="highlight">
    1 &lt;?php
    2 $extensions[&quot;sports_list&quot;] =  array(
    3                 &quot;section&quot; =&gt; &quot;sports_list&quot;,
    4                 &quot;extdir&quot; =&gt; &quot;SportsList&quot;,
    5                 &quot;file&quot; =&gt; 'sportslist.ext.php',
    6                 &quot;module&quot; =&gt; &quot;&quot;);

</div>

------------------------------------------------------------------------

</div>
Now when a Quick Repair and rebuild is run any files in
`custom/Extension/application/Ext/SportsList/` will be consolidated into
`custom/application/Ext/SportsList/sportslist.ext.php`. On it’s own this file will not do anything but you are now able to write custom code that checks the consolidated file rather than having to worry about searching for customisations.

<div class="footnotes">
1.  <div id="chap13.xhtml#fn-langNote">
    </div>
    The language extensions are treated specially and, as such, aren’t compiled to a single file.[↩](#chap13.xhtml#fnref-langNote "wikilink")

</div>
</div>
<span id="chap14.xhtml"></span>

<div>
<span class="section-number">15. </span>Module Installer
--------------------------------------------------------

As detailed in the other chapters of this book there are many ways to customise SuiteCRM. The module installer allows you to package these changes and install them onto other SuiteCRM instances. This is achieved by creating a package.

At the minimum a package is a zip file that contains a `manifest.php` file in it’s root. The manifest file is responsible for providing information about the installer as well as providing information on how to install the package.

### manifest.php

The `manifest.php` file contains the definition of three arrays. Let’s look at each of these arrays in turn. See [Appendix A](#chap19.xhtml#appendix-a "wikilink") for the full sample `manifest.php` file.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><div class="figure">
<img src="images/leanpub_info-circle.png" title="information" alt="information" width="50" />
<p class="caption">information</p>
</div></td>
<td><p>Within path in the manifest file you can use <code>&lt;basepath&gt;</code> to refer to the base directory of the installer. For example <code>&lt;basepath&gt;/Foo.txt</code> will refer to the <code>Foo.txt</code> file in the root of the installer package.</p></td>
</tr>
</tbody>
</table>

#### `$manifest`

The `$manifest` array provides information on the package itself such as it’s name, readme etc. (it also defines the `copy` array for `patch` packages). A sample definition of the manifest array will appear something like this:

<div class="code-block">
Example 15.1: Example `$manifest` array definition

------------------------------------------------------------------------

<div class="highlight">
     1 $manifest = array(
     2   'name' =&gt; 'My First Package',
     3   'description' =&gt; 'This is a simple package example manifest file',
     4   'version' =&gt; '1.5',
     5   'author' =&gt; 'Jim Mackin',
     6   'readme' =&gt; 'readme.txt',
     7   'acceptable_sugar_flavors' =&gt; array('CE'),
     8   'acceptable_sugar_versions' =&gt; array(
     9     'exact_matches' =&gt; array(),
    10     'regex_matches' =&gt; array('6\\.5\\.[0-9]$'),
    11   ),
    12   'copy_files' =&gt; array (
    13     'from_dir' =&gt; '&lt;basepath&gt;/custom/',    
    14     'to_dir' =&gt; 'custom',     
    15     'force_copy' =&gt; array (),
    16   ),
    17   'dependencies' =&gt; array(
    18     array(
    19       'id_name' =&gt; 'example_dependency_package',
    20       'version' =&gt; '2.4',
    21     ),
    22   ),
    23 );

</div>

------------------------------------------------------------------------

</div>
`name`  
The name of the package. This is how the package will appear to the user during installation and in the Module Loader package list. The package name is required.

`description`  
A brief description of the package.

`version`  
The version of this package. This can be any string but is usually a traditional version number (such as `3.1.4`).

`author`  
The author of the package.

`readme`  
A brief readme string. Note that if a `README.txt` is found in the root of the package this will be used instead.

`acceptable_sugar_flavors`  
A remnant of the SugarCRM packages. This should always be an array with (at least) a `CE` entry. If you would like the installer to target both SuiteCRM and SugarCRM editions then this can contain one of the other SugarCRM flavours (`PRO`, `CORP` , `ULT` or `ENT`).

`acceptable_sugar_versions`  
An array detailing the matching SugarCRM versions. Note that the SugarCRM version is distinct from the SuiteCRM version. This array has two keys. `exact_matches` is simply an array of the allowed versions. `regex_matches` allows specifying regexes to match versions. For SuiteCRM you only need to worry about supporting the `6.5.*` versions which can be matched with the regex `6\\.5\\.[0-9]$`. At the time of writing the current SugarCRM version for SuiteCRM is `6.5.20`.

`copy_files`  
This is only used for `patch` installers and will copy files in the `from_dir` key to those in the `to_dir` key. Finally the `force_copy` key can be used to specify files that should be forcibly copied over.

`dependencies`  
An array of other packages that are relied on by this package. Each entry is an array with `id_name` - the id of the package and `version` - the required version of the package.

`icon`  
The path (within the installer) to an icon to be displayed during installation.

`is_uninstallable`  
Whether or not uninstalls should be allowed.

`published_date`  
The date that the package was published. There is no fixed format for the date, it is simply a string.

`key`  
Specifies a key to ensure that modules do not clash. This will prefix the installed modules and tables with `key`. This is used by the module builder when creating packages but can be specified if you wish.

`remove_tables`  
A string specifying whether module tables should be removed when uninstalling this package. Accepted values are `true`, `false` and `prompt`. The default is `true`.

`type`  
The type of the installer, one of `langpack`, `module`, `patch` or `theme`. See the types section.

#### `$install_defs`

Provides information on how the package is to be installed, which files go where and any additional information such as logic hooks, custom fields etc.

##### `id`

A unique identifier for the module.

##### `connectors`

An array of connectors to be installed. Each entry is an array with the following keys:

| Key         | Description                                               |
|-------------|-----------------------------------------------------------|
| `name`      | The name of the connector.                                |
| `connector` | The directory to copy the connector files from.           |
| `formatter` | The directory to copy the connector formatter files from. |

##### `copy`

An array of files and directories to be copied on install. Each entry is an array with the following keys:

| Key    | Description                               |
|--------|-------------------------------------------|
| `from` | The source file/directory in the package. |
| `to`   | The destination file/directory.           |

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><div class="figure">
<img src="images/leanpub_info-circle.png" title="information" alt="information" width="50" />
<p class="caption">information</p>
</div></td>
<td><p>In general if a file can be handled by one of the other keys then that key should be used. For example new admin entries should be copied using the <code>administration</code> key rather than using the <code>copy</code> key.</p></td>
</tr>
</tbody>
</table>

##### `dashlets`

An array of dashlets to be installed. Each entry is an array with the following keys:

| Key    | Description                                                                  |
|--------|------------------------------------------------------------------------------|
| `name` | The name of the new dashlet.                                                 |
| `from` | The path in the install package from which the dashlet files will be copied. |

##### `language`

An array of language files to be installed. Each entry is an array with the following keys:

| Key         | Description                                                                                        |
|-------------|----------------------------------------------------------------------------------------------------|
| `from`      | The location of the language file inside the package.                                              |
| `to_module` | The module this language file is intended for (or ‘application’ for application language strings). |
| `language`  | The language that this file is for (i.e. en\_us or es\_es).                                        |

See the chapter on [Language Strings](#chap08.xhtml#language-chapter "wikilink") for more information.

##### `layoutdefs`

An array of layoutdef files which are used to add, remove or edit subpanels. Each entry is an array with the following keys:

| Key         | Description                                          |
|-------------|------------------------------------------------------|
| `from`      | The path in the package to the file to be installed. |
| `to_module` | The module that this file will be installed to.      |

##### `vardefs`

An array of the vardefs to be added to specific modules. Each entry is an array with the following keys:

| Key         | Description                                     |
|-------------|-------------------------------------------------|
| `from`      | The location of the vardef file in the package. |
| `to_module` | The destination module.                         |

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><div class="figure">
<img src="images/leanpub_info-circle.png" title="information" alt="information" width="50" />
<p class="caption">information</p>
</div></td>
<td><p>Generally you should install custom fields using the <code>custom_fields</code> key. However this key can be used to alter existing fields or add more complex fields.</p></td>
</tr>
</tbody>
</table>

##### `menu`

An array of menus to be installed. Each entry is an array with the following keys:

| Key         | Description                                   |
|-------------|-----------------------------------------------|
| `from`      | The location of the menu file in the package. |
| `to_module` | The destination module for this menu.         |

##### `beans`

An array of beans to be installed. Each entry is an array with the following keys:

| Key      | Description                                           |
|----------|-------------------------------------------------------|
| `module` | The name of the module.                               |
| `class`  | The name of the bean class.                           |
| `path`   | The path (within the package) to the bean file.       |
| `tab`    | Whether or not a tab should be added for this module. |

##### `relationships`

An array detailing any new relationships added (in particular relationships where one side is an existing module). Each entry is an array with the following keys:

| Key         | Description                                              |
|-------------|----------------------------------------------------------|
| `module`    | The module that this relationship will be attached to.   |
| `meta_data` | The location of the metadata file for this relationship. |

##### `custom_fields`

An array of new custom fields to be installed (See the [Vardefs](#chap03.xhtml#vardefs-chapter "wikilink") chapter for more information on this). Each entry is an array with the following keys:

| Key              | Description                                                                                                                                                                                                     |
|------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| `name`           | The name of the new custom field.                                                                                                                                                                               |
| `label`          | The key for the language string which will act as the label for this custom field.                                                                                                                              |
| `type`           | The type of this custom field.                                                                                                                                                                                  |
| `max_size`       | For string field types, the maximum number of characters.                                                                                                                                                       |
| `require_option` | Whether or not the field is required.                                                                                                                                                                           |
| `default_value`  | The default value of this field.                                                                                                                                                                                |
| `ext1`           | Extended field information. Different field types will use this value differently. For example Enum fields will store the key for the options in this field, decimal and float fields will store the precision. |
| `ext2`           | Extended field information. Different field types will use this value differently. For example, dynamic dropdowns will store the parent dropdown, text areas will store the number of rows.                     |
| `ext3`           | Extended field information. Different field types will use this value differently. For example, text areas will store the number of columns.                                                                    |
| `ext4`           | Extended field information. Different field types will use this value differently. For HTML field types this will store the HTML.                                                                               |
| `audited`        | Whether or not changes to this field should be audited.                                                                                                                                                         |
| `module`         | Used to specify the module where the custom field will be added.                                                                                                                                                |

##### `logic_hooks`

An array of logic hooks to be installed. See the [Logic Hooks](#chap11.xhtml#logic-hooks-chapter "wikilink") chapter for more information. Each entry is an array with the following keys:

| Key           | Description                                                                                                             |
|---------------|-------------------------------------------------------------------------------------------------------------------------|
| `module`      | The module to where this logic hook should be installed. Leaving this empty will install into the top level logic hook. |
| `hook`        | The logic hook type (i.e. `after_save`, `after_login`, etc.).                                                           |
| `order`       | The sort order for this logic hook.                                                                                     |
| `description` | A description of the hook.                                                                                              |
| `file`        | The file containing the class for this logic hook, relative to the SuiteCRM root.                                       |
| `class`       | The class that contains the logic hook function that should be called by this hook.                                     |
| `function`    | The function to be invoked when this hook is triggered.                                                                 |

##### `image_dir`

A path to a directory of images to be included in the install.

##### `schedulers`

An array of schedulers to be installed. Each entry is an array with a single key:

| Key    | Description                                 |
|--------|---------------------------------------------|
| `from` | The file containing the new scheduled task. |

##### `administration`

An array of admin panels to be installed. Each entry is an array with a single key:

| Key    | Description                                         |
|--------|-----------------------------------------------------|
| `from` | The file containing the new admin panel definition. |

##### `pre_execute`

Defines an array of files to be executed before the package is installed. Each entry is a path to a file within the package. Any output will be displayed to the user in the install log.

##### `post_execute`

Defines an array of files to be executed after the package is installed. Each entry is a path to a file within the package. Any output will be displayed to the user in the install log.

##### `pre_uninstall`

Defines an array of files to be executed before the package is uninstalled. Each entry is a path to a file within the package. Any output will be displayed to the user in the uninstall log.

##### `post_uninstall`

Defines an array of files to be executed after the package is uninstalled. Each entry is a path to a file within the package. Any output will be displayed to the user in the uninstall log.

#### `$upgrade_manifest`

Provides a means of upgrading an already installed package by providing different `install_defs`.

<div class="page-break">
</div>
### Types

| Type     | Description                                                            |
|----------|------------------------------------------------------------------------|
| langpack | A language installer. This will add an entry to the language dropdown. |
| module   | A module installer. Will install new modules and/or functionality.     |
| patch    | A patch installer. This is used to upgrade SuiteCRM.                   |
| theme    | A theme installer. This will add a new option to the themes.           |

#### Other files

`README.txt`  
Contains the readme for this package. If `README.txt` and a readme entry in the `manifest.php` is defined then this file will be used.

`LICENSE.txt`  
Provides information on the license for this package.

`scripts/pre_install.php`  
A PHP script which defines a method `pre_install()`. This method will be called before the package is installed. Any output will be displayed to the user in the install log.

`scripts/post_install.php`  
A PHP script which defines a method `post_install()`. This method will be called after the package is installed.

`scripts/pre_uninstall.php`  
A PHP script which defines a method `pre_uninstall()`. This method will be called before the package is uninstalled.

`scripts/post_uninstall.php`  
A PHP script which defines a method `post_uninstall()`. This method will be called after the package is uninstalled.

</div>
<span id="chap15.xhtml"></span>

<div>
<span class="section-number">16. </span>API
-------------------------------------------

The SuiteCRM API allows third party code to access and edit SuiteCRM data and functionality.

### Using the API

SuiteCRM has both a REST and a SOAP API. Which API you want to use will largely come down to personal preference and the support for SOAP/REST libraries in whichever language you will be using.

Both APIs will require a username and password. It is usual to create a user specifically for the API.

#### SOAP

The WSDL for the SOAP API can be found at:

<div class="code-block">
Example 16.1: SOAP API WSDL Location

------------------------------------------------------------------------

<div class="highlight">
    example.com/suitecrm/service/v4_1/soap.php?wsdl

</div>

------------------------------------------------------------------------

</div>
Where `example.com/suitecrm` is the address of your SuiteCRM instance. `v4_1` is the version of the API and can be changed, `v4_1` is the latest version at the time of writing.

##### SOAP Example

The following PHP example uses the built in SoapClient class.

<div class="code-block">
Example 16.2: Accessing the SOAP API

------------------------------------------------------------------------

<div class="highlight">
     1 &lt;?php
     2 //Create a new SoapClient
     3 $wsdlURL = &quot;http://example.com/suitecrm/service/v4_1/soap.php?wsdl&quot;;
     4 $client = new SoapClient($wsdlURL);
     5 
     6 //Login to the API and get the session id
     7 $userAuth = array(
     8         'user_name' =&gt; '&lt;suitecrmuser&gt;',
     9         'password' =&gt; md5('&lt;suitecrmpassword&gt;'),
    10 );
    11 $appName = 'My SuiteCRM SOAP Client';
    12 $nameValueList = array();
    13 $loginResults = $client-&gt;login($userAuth, $appName, $nameValueList);
    14 
    15 //Get a list of at most 10 accounts with a billing address in Ohio. Along with
    16 //The first and last names of any contacts in that Account.
    17 $results = $client-&gt;get_entry_list(
    18         //Session id - retrieved from login call
    19         $loginResults-&gt;id,
    20         //Module to get_entry_list for
    21         'Accounts',
    22         //Filter query - Added to the SQL where clause
    23         &quot;accounts.billing_address_city = 'Ohio'&quot;,
    24         //Order by - unused
    25         '',
    26         //Start with the first record
    27         0,
    28         //Return the id and name fields
    29         array('id','name'),
    30         //Link to the &quot;contacts&quot; relationship and retrieve the
    31         //First and last names.
    32         array(
    33                 array(
    34                         'name' =&gt; 'contacts',
    35                         'value' =&gt; array(
    36                                 'first_name',
    37                                 'last_name',
    38                         ),
    39                 ),
    40         ),
    41         //Show 10 max results
    42         10,
    43         //Do not show deleted
    44         0
    45 );
    46 print_r($results);

</div>

------------------------------------------------------------------------

</div>
<div class="page-break">
</div>
#### REST

The SuiteCRM REST API can be found at:

<div class="code-block">
Example 16.3: REST API Endpoint Location

------------------------------------------------------------------------

<div class="highlight">
    example.com/suitecrm/service/v4_1/rest.php

</div>

------------------------------------------------------------------------

</div>
Where example.com/suitecrm is the address of your SuiteCRM instance. v4\_1 is the version of the API and can be changed, v4\_1 is the latest version at the time of writing.

The SuiteCRM REST API is not a true REST API - all calls are performed as POSTs and all calls are to the base URL with the method passed in as a post argument.

The arguments to the REST API calls are:
  

method

  
The method which will be called, i.e. `login` or `get_entry_list`. See [Appendix B](#chap20.xhtml#appendix-b "wikilink") for a list of API methods.

input\_type  
The input type of the rest\_data. This is usually `JSON` but can also be `Serialize`.

response\_type  
How the response will be encoded. This is usually `JSON` but can also be `Serialize`.

rest\_data  
Any other arguments that are required by this method. This is passed as an encoded array. The encoding is determined by input\_type.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><div class="figure">
<img src="images/leanpub_warning.png" title="warning" alt="warning" width="50" />
<p class="caption">warning</p>
</div></td>
<td><p>Note that, for REST requests it is the order of the arguments that matter in <code>rest_data</code> and not the name.</p></td>
</tr>
</tbody>
</table>

<div class="page-break">
</div>
##### Examples

<div class="code-block">
Example 16.4: Accessing the REST API

------------------------------------------------------------------------

<div class="highlight">
     1 &lt;?php
     2 
     3 $url = &quot;http://example.com/suitecrm/service/v4_1/rest.php&quot;;
     4 
     5 function restRequest($method, $arguments){
     6  global $url;
     7  $curl = curl_init($url);
     8  curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1);
     9  $post = array(
    10          &quot;method&quot; =&gt; $method,
    11          &quot;input_type&quot; =&gt; &quot;JSON&quot;,
    12          &quot;response_type&quot; =&gt; &quot;JSON&quot;,
    13          &quot;rest_data&quot; =&gt; json_encode($arguments),
    14  );
    15 
    16  curl_setopt($curl, CURLOPT_POSTFIELDS, $post);
    17 
    18  $result = curl_exec($curl);
    19  curl_close($curl);
    20  return json_decode($result,1);
    21 }
    22 
    23 
    24 $userAuth = array(
    25         'user_name' =&gt; 'suitecrmuser',
    26         'password' =&gt; md5('suitecrmpassword'),
    27 );
    28 $appName = 'My SuiteCRM REST Client';
    29 $nameValueList = array();
    30 
    31 $args = array(
    32             'user_auth' =&gt; $userAuth,
    33             'application_name' =&gt; $appName,
    34             'name_value_list' =&gt; $nameValueList);
    35 
    36 $result = restRequest('login',$args);
    37 $sessId = $result['id'];
    38 
    39 $entryArgs = array(
    40   //Session id - retrieved from login call
    41  'session' =&gt; $sessId,
    42   //Module to get_entry_list for
    43  'module_name' =&gt; 'Accounts',
    44   //Filter query - Added to the SQL where clause,
    45  'query' =&gt; &quot;accounts.billing_address_city = 'Ohio'&quot;,
    46   //Order by - unused
    47  'order_by' =&gt; '',
    48   //Start with the first record
    49  'offset' =&gt; 0,
    50   //Return the id and name fields
    51  'select_fields' =&gt; array('id','name',),
    52  //Link to the &quot;contacts&quot; relationship and retrieve the
    53  //First and last names.
    54  'link_name_to_fields_array' =&gt; array(
    55          array(
    56                  'name' =&gt; 'contacts',
    57                  'value' =&gt; array(
    58                          'first_name',
    59                          'last_name',
    60                  ),
    61          ),
    62  ),
    63   //Show 10 max results
    64  'max_results' =&gt; 10,
    65   //Do not show deleted
    66  'deleted' =&gt; 0,
    67 );
    68 $result = restRequest('get_entry_list',$entryArgs);
    69 
    70 print_r($result);

</div>

------------------------------------------------------------------------

</div>
For a full list of API methods and their arguments see [Appendix B](#chap20.xhtml#appendix-b "wikilink").

### Adding custom API methods

Sometimes the existing API methods are not sufficient or using them for a task would be overly complex. SuiteCRM allows the web services to be extended with additional methods or overriding existing methods.

The recommended path for custom entry points is the following
`custom/service/<version>_custom/`. At the time of writing the latest web service version is `v4_1` so this would be `custom/service/v4_1_custom/`.

Next we create the implementing class. This will create our new method. In our example we will simply create a new method which writes to the SuiteCRM log We will call this method
`write_log_message`.

<div class="code-block">
Example 16.5: Custom v4\_1 Web Service Implementation

------------------------------------------------------------------------

<div class="highlight">
     1 &lt;?php
     2 if(!defined('sugarEntry')){
     3   define('sugarEntry', true);
     4 }
     5 require_once 'service/v4_1/SugarWebServiceImplv4_1.php';
     6 class SugarWebServiceImplv4_1_custom extends SugarWebServiceImplv4_1
     7 {
     8 
     9   function write_log_message($session, $message)
    10   {
    11     $GLOBALS['log']-&gt;info('Begin: write_log_message');
    12 
    13     //Here we check that $session represents a valid session
    14     if (!self::$helperObject-&gt;checkSessionAndModuleAccess(
    15                                                     $session, 
    16                                                     'invalid_session', 
    17                                                     '', 
    18                                                     '', 
    19                                                     '',  
    20                                                     new SoapError()))
    21     {
    22       $GLOBALS['log']-&gt;info('End: write_log_message.');
    23       return false;
    24     }
    25     $GLOBALS['log']-&gt;info($message);
    26     return true;
    27   }
    28 }

</div>

------------------------------------------------------------------------

</div>
Next we create the registry file which will register our new method.

<div class="code-block">
Example 16.6: Custom v4\_1 web service registry

------------------------------------------------------------------------

<div class="highlight">
     1 &lt;?php
     2     require_once 'service/v4_1/registry.php';
     3     class registry_v4_1_custom extends registry_v4_1
     4     {
     5         protected function registerFunction()
     6         {
     7             parent::registerFunction();
     8             $this-&gt;serviceClass-&gt;registerFunction('write_log_message', 
     9                                                   array(
    10                                                     'session'=&gt;'xsd:string',
    11                                                     'message'=&gt;'xsd:string'), 
    12                                                   array(
    13                                                     'return'=&gt;'xsd:boolean')
    14                                                   );
    15         }
    16     }

</div>

------------------------------------------------------------------------

</div>
Finally we create the entry point. This is the actual file that will be called by our API clients. This will reference the two files which we have created and will call the webservice implementation with our files.

<div class="code-block">
Example 16.7: Custom v4\_1 REST Entry point

------------------------------------------------------------------------

<div class="highlight">
     1 &lt;?php
     2 chdir('../../..');
     3 
     4 require_once 'SugarWebServiceImplv4_1_custom.php';
     5 
     6 $webservice_path = 'service/core/SugarRestService.php';
     7 $webservice_class = 'SugarRestService';
     8 $webservice_impl_class = 'SugarWebServiceImplv4_1_custom';
     9 $registry_path = 'custom/service/v4_1_custom/registry.php';
    10 $registry_class = 'registry_v4_1_custom';
    11 $location = 'custom/service/v4_1_custom/rest.php';
    12 
    13 require_once 'service/core/webservice.php';

</div>

------------------------------------------------------------------------

</div>
<div class="code-block">
Example 16.8: Custom v4\_1 SOAP Entry point

------------------------------------------------------------------------

<div class="highlight">
     1 &lt;?php
     2 chdir('../../..');
     3 require_once('SugarWebServiceImplv4_1_custom.php');
     4 $webservice_class = 'SugarSoapService2';
     5 $webservice_path = 'service/v2/SugarSoapService2.php';
     6 $webservice_impl_class = 'SugarWebServiceImplv4_1_custom';
     7 $registry_class = 'registry_v4_1_custom';
     8 $registry_path = 'custom/service/v4_1_custom/registry.php';
     9 $location = 'custom/service/v4_1_custom/soap.php';
    10 require_once('service/core/webservice.php');

</div>

------------------------------------------------------------------------

</div>
#### Usage

We can now use our custom endpoint. This is identical to using the API as detailed above, except that we use our custom entry point for either the SOAP WSDL or REST URL. For example using the same SuiteCRM location (`example.com/suitecrm`) as the above examples and using `v4_1`, we would use the following

<div class="code-block">
Example 16.9: Custom v4\_1 URLS

------------------------------------------------------------------------

<div class="highlight">
    1 //SOAP WSDL
    2 example.com/suitecrm/custom/service/v4_1_custom/soap.php?wsdl
    3 //REST URL
    4 example.com/suitecrm/custom/service/v4_1_custom/rest.php

</div>

------------------------------------------------------------------------

</div>
</div>
<span id="chap16.xhtml"></span>

<div>
<span class="section-number">17. </span>Best Practices
------------------------------------------------------

### Development instances

When making changes you should always use a development or test instance first. This allows you to fully and safely test any changes.

### Version control

When developing customisations it is prudent to use some form of version control. Version control allows tracking changes to your codebase in addition to rolling back changes. There are many version control systems available. SuiteCRM uses [Git](http://git-scm.com/) although I also like [Mercurial](http://mercurial.selenic.com/).

If you are using a development instance (as mentioned above) then Version Control usually allows you to push changes to other versions or to tag releases. This provides a way of pushing changes to live or test instances safely. Crucially it also means that, should there be major problems with a version then this can be easily rolled back.

### Backup

SuiteCRM has been developed to be customisable. However, mistakes, bugs and other unpleasantness can (and thanks to Murphy’s law, will) happen. You should always ensure, before making any changes, that you have a backup of all files and of the database.

In order to back up files you can simply create a zip of the SuiteCRM directory and copy it to a safe place. On Linux systems this can be performed using the following:

<div class="code-block">
Example 17.1: File backup

------------------------------------------------------------------------

<div class="highlight">
    tar -czvf suitecrmfilebackup.tar.gz /path/to/suitecrm

</div>

------------------------------------------------------------------------

</div>
Backing up the SuiteCRM database will vary depending on which database you are using. However MySQL backups can be performed using the `mysqldump` command on Linux as seen here:

<div class="code-block">
Example 17.2: MySQL Database backup

------------------------------------------------------------------------

<div class="highlight">
    mysqldump suitecrmdatabase -u databaseuser -p | gzip -c | cat &gt; suitecrm.sql.gz

</div>

------------------------------------------------------------------------

</div>
### Be upgrade safe

Unless you are making changes to a custom module you should strive in all cases to use the custom framework and make changes in the custom folder. This ensures that, should you make a mistake, rectifying the mistake is as simple as removing the customisation.

However the main advantage to using `custom` is that, when you upgrade SuiteCRM in the future you will not have your changes overwritten by the updated SuiteCRM files. See the [Extensions](#chap13.xhtml#extensions-chapter "wikilink") chapter for more information.

### Use appropriate log levels

Using appropriate log levels (See the chapter on [Logging](#chap10.xhtml#logging-chapter "wikilink")) makes it easier to track down issues. You do not want very important messages to be logged as `debug` since this will make them difficult to find. Likewise you don’t want unimportant log messages cluttering up the `fatal` log output.

### Long running logic hooks

If a logic hook task is long running then you should place it into the job queue (see the [Logic Hook](#chap11.xhtml#logic-hooks-chapter "wikilink") and [Scheduled Tasks](#chap12.xhtml#scheduled-tasks-chapter "wikilink") chapters).

### Minimise SQL

Where possible you should strive to use the SuiteCRM supplied methods of accessing data. This includes using beans and the BeanFactory where possible (see the chapter on [Working with beans](#chap02.xhtml#working-with-beans-chapter "wikilink")). There are a few reasons for this. The first is that SQL is usually either hardcoded or has to be dynamically built. In the case where the SQL is hardcoded this means that changes to fields will not be reflected thereby making your code more brittle.

Dynamic SQL is better because it can react to field changes and generally be tailored to fit the situation. However this requires adding extra, often complex, code. It can be hard to account for all situations (this can be especially problematic when attempting to traverse relationships dynamically).

Another issue is that, usually SQL will end up being Database specific (see the next point for mitigating this however).

Finally any custom logic (such as Logic Hooks) which would usually be fired for saving beans or relationships will not be fired for SQL queries.

### SQL Use

In some cases using raw SQL is unavoidable. If that is the case then you should strive to use standard compliant SQL. If database engine specific features need to be used, and you wish to target other database engines, you can check for the DB type. For example:

<div class="code-block">
Example 17.1: Checking for the database engine

------------------------------------------------------------------------

<div class="highlight">
     1 function getSomeSQLQuery(){
     2     global $sugar_config;
     3     switch($sugar_config['dbconfig']['db_type']){
     4         case 'mssql':
     5             $sql = 'MSSQL specific SQL';
     6             break;
     7         case 'mysql':
     8         default:
     9             $sql = 'MySQL specific SQL';
    10             break;
    11     }
    12     return $sql;
    13 }

</div>

------------------------------------------------------------------------

</div>
### Entry check

The majority of SuiteCRM files will start with some variation of the following line:

<div class="code-block">
Example 17.2: Entry check

------------------------------------------------------------------------

<div class="highlight">
    if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');

</div>

------------------------------------------------------------------------

</div>
This prevents direct access to the file by ensuring that SuiteCRM has been loaded through a valid entry point (i.e. it has been loaded through index.php, cron.php or a custom entry point).

### Redirect after post

Sometimes you may have custom controller actions (see the controller section) or custom entry points (see the [Entry Points](#chap07.xhtml#entry-point-chapter "wikilink") chapter). These actions and entry points or other pages are usually accessed using POST. After a POST request it is a web best practice to redirect to a different page, especially if your page makes any changes. This prevents the user from refreshing the page and causing a duplicate action. Within SuiteCRM it is best to use the `SugarApplication::redirect` method to redirect. This simply accepts a URL. As follows:

<div class="code-block">
Example 17.3: Redirecting within SuiteCRM

------------------------------------------------------------------------

<div class="highlight">
    SugarApplication::redirect('index.php?module=&lt;TheModule&gt;');

</div>

------------------------------------------------------------------------

</div>
</div>
<span id="chap17.xhtml"></span>

<div>
<span class="section-number">18. </span>Performance Tweaks
----------------------------------------------------------

In most cases the performance of SuiteCRM should not be an issue. However in the case of large datasets or systems with many users you may notice some performance degradation. These changes can help improve performance.

### Server

The server that SuiteCRM runs on is, of course, very important when it comes to the kind of performance you can expect. A full guide on server setup is outside the scope of this book. However there are some things you can do to ensure that you get the best performance out of SuiteCRM.

#### PHP

Installing a PHP opcode cache will increase the performance of all PHP files. These work by caching the compilation of PHP files resulting in less work on each request. Furthermore SuiteCRM will use the caching API of some PHP accelerators which will further increase performance. If you are using Linux then [APC](http://php.net/manual/en/book.apc.php) is the usual choice. Windows users should check out [WinCache](http://php.net/manual/en/book.wincache.php).

#### MySQL

MySQL is notorious for having small default settings. Fully optimising MySQL is outside the scope of this book (however checkout [mysqltuner.pl](http://mysqltuner.pl) for a helpful Perl script which will provide setting recommendations - note that you should be careful when running files from an unknown source). One small change that can make a big difference is increasing the `innodb_buffer_pool_size`.

If you have migrated or imported a significant amount of data it is possible that some tables will be fragmented. Running `OPTIMIZE TABLE tablename` can increase performance.

### Indexes

Adding indexes on the fields of modules can improve database performance. The core modules usually have important fields indexed. However if you have created a new module or added new, often searched fields to a module then these fields may benefit from being indexed. See the [Vardef](#chap03.xhtml#vardefs-chapter "wikilink") chapter for adding indexes.

### Config Changes

The following are some config settings that can be used to improve performance. Please note that in most cases you will have better performance gains by first following the steps in previous sections. These settings should be set in the config\_override.php file. See the chapter on the [Config](#chap09.xhtml#config-chapter "wikilink") files for more information.

<div class="code-block">
<div class="highlight">
    $sugar_config['developerMode'] = false;

</div>
</div>
Unless you are actively developing on an instance developerMode should be off. Otherwise each page request will cause cached files to be reloaded.

<div class="code-block">
<div class="highlight">
    $sugar_config['disable_count_query'] = true;

</div>
</div>
For systems with large amounts of data the count queries on subpanels used for the pagination controls can become slow thereby causing the page to be sluggish or outright slow to load. Disabling these queries can improve performance dramatically on some pages.

<div class="code-block">
<div class="highlight">
    $sugar_config['disable_vcr'] = true;

</div>
</div>
By default opening the detail view of a record from the list view will also load the other records in the list to allow for easy moving through records. If you do not use this feature, or, if loading the detail view for some records has become slow, you can disable this feature.

<div class="code-block">
<div class="highlight">
    $sugar_config['list_max_entries_per_page'] = '10';

</div>
</div>
The number of records shown in each page of the list view can be decreased. This will result in a slight increase in performance on list view pages.

<div class="code-block">
<div class="highlight">
    $sugar_config['logger']['level'] = 'fatal';

</div>
</div>
Lowering the log level means that there will be less log messages to write to disk on each request. This will slightly (very slightly) increase performance.

</div>
<span id="chap18.xhtml"></span>

<div>
<span class="section-number">19. </span>Further Resources
---------------------------------------------------------

Although this book has aimed to be a thorough resource, SuiteCRM is large and feature rich. Therefore it is not possible to include all the information you may require. Here are some extra resources for developing with SuiteCRM.

### SuiteCRM Website

The SuiteCRM website ([SuiteCRM.com](http://suitecrm.com) has many excellent resources including:

-   [SuiteCRM forums](https://suitecrm.com/forum/index) - come and say hi!
-   [SuiteCRM Blog](https://suitecrm.com/suitecrm/blog)
-   [SuiteCRM Wiki](https://suitecrm.com/wiki/index.php/Main_Page)

### External SuiteCRM Resources

[SuiteCRM GitHub](https://github.com/salesagility/SuiteCRM)  
The SuiteCRM source code is hosted on GitHub. Here you can get bleeding edge code changes and even contribute code.

### SugarCRM Resources

SuiteCRM has strived to remain compatible with the SugarCRM community edition and much of the documentation is still valid. The appropriate version for SuiteCRM information is 6.5. Versions of documentation higher than this (i.e. 7) will probably not be relevant.

-   [SugarCRM Developer docs](http://support.sugarcrm.com/02_Documentation/04_Sugar_Developer/)
-   [SugarCRM Developer Blog](http://developer.sugarcrm.com/)

### Technical Links

-   [PHP](http://php.net/) - The main language used by SuiteCRM
-   [Smarty](http://www.smarty.net/) - The templating language used throughout SuiteCRM.
-   [XDebug](http://xdebug.org) - Debugging/profiling extension for PHP
-   [Git](http://git-scm.com/) - Distributed version control system
-   [YUI](http://yuilibrary.com/) - Legacy Javascript library used in SuiteCRM
-   [JQuery](https://jquery.com/) - Javascript library used in SuiteCRM - to be preferred over YUI.
-   [PHPMailer](https://github.com/PHPMailer/PHPMailer) Email library used in SuiteCRM
-   [APC](http://php.net/manual/en/book.apc.php) - Alternative PHP Cache. PHP Opcode cache supported by SuiteCRM
-   [WinCache](http://php.net/manual/en/book.wincache.php) - Windows PHP cache. PHP Opcode cache supported by SuiteCRM
-   [PHPStorm](https://www.jetbrains.com/phpstorm/) - PHP IDE (Paid)
-   [Eclipse PHP Development Tools](https://eclipse.org/pdt/) - PHP IDE (Free and Open Source)

### Other Links

-   [SalesAgility](https://salesagility.com/) - The company behind SuiteCRM.
-   [Jim Mackin](http://www.jsmackin.co.uk) - Me :)

</div>
<span id="chap19.xhtml"></span>

<div>
<span class="section-number">20. </span>Appendix A - Code Examples
------------------------------------------------------------------

### Metadata

This is an example of setting up a function subpanel (see the [Metadata](#chap05.xhtml#metadata-chapter "wikilink") chapter for more information).

In this example the cases module has a custom field `incident_code_c` which is used to track cases with the same root cause. We’ll add a subpanel to show all cases that have the same `incident_code_c`.

Initially we add to the `subpanel_setup` section of Cases by creating the following file in `custom/Extension/modules/Cases/Ext/Layoutdefs/IncidentLayoutdefs.php`

<div class="code-block">
Example A.1: `IncidentLayoutdefs.php`

------------------------------------------------------------------------

<div class="highlight">
     1 &lt;?php
     2 $layout_defs[&quot;Cases&quot;][&quot;subpanel_setup&quot;]['incident_cases'] = array(
     3   'module' =&gt; 'Cases',
     4   'title_key' =&gt; 'LBL_INCIDENT_CASES',
     5   'subpanel_name' =&gt; 'default',
     6   'get_subpanel_data' =&gt; 'function:get_cases_by_incident',
     7   'function_parameters' =&gt; 
     8           array('import_function_file' =&gt; 'custom/modules/Cases/IncidentUtils.ph\
     9 p',),
    10 );

</div>

------------------------------------------------------------------------

</div>
Next we create the file which will define our `get_cases_by_incident` function `custom/modules/Cases/IncidentUtils.php`.

<div class="code-block">
Example A.2: `IncidentUtils.php`

------------------------------------------------------------------------

<div class="highlight">
     1 &lt;?php
     2 function get_cases_by_incident(){
     3         global $db;
     4         //Get the current bean
     5         $bean = $GLOBALS['app']-&gt;controller-&gt;bean;
     6         $incidentCode = $db-&gt;quote($bean-&gt;incident_code_c);
     7         //Create the SQL array
     8         $ret = array();
     9         $ret['select'] = ' SELECT id FROM cases ';
    10         $ret['from'] = ' FROM cases ';
    11         $ret['join'] = &quot;&quot;;
    12         //Get all cases where the incident code matches but exclude the current \
    13 case.
    14         $ret['where']=&quot;WHERE cases.deleted = 0 AND cases_cstm.incident_code_c = \
    15 '{$incidentCode}' AND cases.id != '{$bean-&gt;id}'&quot;;
    16         return $ret;
    17 }

</div>

------------------------------------------------------------------------

</div>
### Module Installer

The following is a basic example manifest file. See the [Module Installer](#chap14.xhtml#module-installer-chapter "wikilink") chapter.

<div class="code-block">
Example A.3: Example manifest file

------------------------------------------------------------------------

<div class="highlight">
      1 $manifest = array(
      2   'name' =&gt; 'Example manifest',
      3   'description' =&gt; 'A basic manifest example',
      4   'version' =&gt; '1.2.3',
      5   'author' =&gt; 'Jim Mackin',
      6   'readme' =&gt; 'This is a manifest example for the SuiteCRM for Developers book',
      7   'acceptable_sugar_flavors' =&gt; array('CE'),
      8   'acceptable_sugar_versions' =&gt; array(
      9       'exact_matches' =&gt; array('6.5.20',),
     10   ),
     11   'dependencies' =&gt; array(
     12     array(
     13       'id_name' =&gt; 'hello_world',
     14       'version' =&gt; '3.2.1'
     15     ),
     16   ),
     17   'icon' =&gt; 'ManifestExample.png',
     18   'is_uninstallable' =&gt; true,
     19   'published_date' =&gt; '2015-05-05',
     20   'type' =&gt; 'module',
     21   'remove_tables' =&gt; 'prompt',
     22 );
     23 $installdefs = array(
     24   'id' =&gt; 'suitecrmfordevelopers_example_manifest',
     25   'image_dir' =&gt; '/images/',
     26   'copy' =&gt; array(
     27     array(
     28       'from' =&gt; '/modules/ExampleModule',
     29       'to' =&gt; 'modules/ExampleModule',
     30     ),
     31   ),
     32   'dashlets' =&gt; array(  
     33     array(
     34       'from' =&gt; '/modules/ExampleModule/Dashlets/',  
     35       'name' =&gt; 'ExampleModuleDashlet'  
     36     )
     37   ),
     38   'language' =&gt; array(
     39     array(
     40       'from' =&gt; 'application/language/en_us.examplemoduleadmin.php',  
     41       'to_module' =&gt; 'application',  
     42       'language' =&gt; 'en_us'
     43     ),
     44     array(    
     45       'from' =&gt; '/modules/Accounts/language/en_us.examplemodule.php',
     46       'to_module' =&gt; 'Accounts',
     47       'language' =&gt; 'en_us'
     48     ),
     49     array(
     50       'from' =&gt; '/application/language/es_es.examplemoduleadmin.php',  
     51       'to_module' =&gt; 'application',
     52       'language' =&gt; 'es_es'
     53     ),  
     54     array(    
     55       'from' =&gt; '/modules/Accounts/language/es_es.examplemodule.php',  
     56       'to_module' =&gt; 'Accounts',
     57       'language' =&gt; 'es_es'
     58     ),  
     59   ),
     60   'custom_fields' =&gt; array(  
     61     array(
     62       'name' =&gt; 'example_field',
     63       'label' =&gt; 'Example Field',
     64       'type' =&gt; 'varchar',
     65       'max_size' =&gt;  100,
     66       'module' =&gt; 'Accounts',  
     67     ),
     68   ),
     69   'vardefs' =&gt; array(  
     70     array(  
     71       'from' =&gt; 'modules/Accounts/vardefs/examplemodule_vardefs.php',  
     72       'to_module' =&gt; 'Accounts',  
     73     ),
     74   ),
     75   'beans' =&gt; array(
     76     array(
     77       'module' =&gt; 'ExampleModule',  
     78       'class' =&gt; 'ExampleModule',
     79       'path' =&gt; 'modules/ExampleModule/ExampleModule.php',  
     80     ),
     81   ),
     82   'logic_hooks' =&gt; array(
     83     array(  
     84       'module' =&gt; 'Accounts',
     85       'hook' =&gt; 'before_save',  
     86       'order' =&gt; 100,  
     87       'description'  =&gt; 'Example module before save hook',  
     88       'file' =&gt; 'modules/ExampleModule/ExampleModuleHook.php',
     89       'class' =&gt; 'ExampleModuleLogicHooks',
     90       'function' =&gt; 'accounts_before_save',  
     91     ),
     92   ),  
     93   'administration' =&gt; array(  
     94     array(  
     95       'from' =&gt; 'modules/administration/examplemodule_admin.php',  
     96     ),
     97   ),
     98 );
     99 $upgrade_manifest = array(
    100 );

</div>

------------------------------------------------------------------------

</div>
</div>
<span id="chap20.xhtml"></span>

<div>
<span class="section-number">21. </span>Appendix B - API Methods
----------------------------------------------------------------

### Methods

#### login

Logs into SuiteCRM and returns a session id used for subsequent API calls.

##### Arguments

login arguments

| Name                              | Type              | Desc                                                                       |
|-----------------------------------|-------------------|----------------------------------------------------------------------------|
| user\_auth                        | array             | Authentication details for the API User                                    |
| user\_auth\[user\_name\]          | string            | The user name of the SuiteCRM user. Required.                              |
| user\_auth\[password\]            | string            | The MD5 hash of the password for user\_name. Required.                     |
| application\_name                 | string            | An identifier for the application accessing the API                        |
| name\_value\_list                 | name\_value\_list | An array of login options                                                  |
| name\_value\_list\[language\]     | string            | The language for this user                                                 |
| name\_value\_list\[notifyonsave\] | bool              | Send email notifications when a new record is saved and assigned to a user |

##### Response

login response

| Name                                                | Type              | Desc                                                                                                           |
|-----------------------------------------------------|-------------------|----------------------------------------------------------------------------------------------------------------|
| id                                                  | string            | The session id for this login. Required for all other API calls.                                               |
| name\_value\_list                                   | name\_value\_list | An array containing information about this user.                                                               |
| name\_value\_list\[user\_id\]                       | string            | The id of the logged in user.                                                                                  |
| name\_value\_list\[user\_name\]                     | string            | The user\_name of the logged in user                                                                           |
| name\_value\_list\[user\_language\]                 | string            | The language setting of the logged in user                                                                     |
| name\_value\_list\[user\_currency\_id\]             | string            | The id of the currency of the logged in user. -99 is the default currency.                                     |
| name\_value\_list\[user\_currency\_name\]           | string            | The name of the currency of the logged in user.                                                                |
| name\_value\_list\[user\_is\_admin\]                | bool              | Whether the logged in user is an admin                                                                         |
| name\_value\_list\[user\_default\_team\_id\]        | string            | The default team of the logged in user. This value comes from before the fork of SuiteCRM and isn’t used.      |
| name\_value\_list\[user\_default\_dateformat\]      | string            | The default date format of the logged in user.                                                                 |
| name\_value\_list\[user\_default\_timeformat\]      | string            | The default time format of the logged in user                                                                  |
| name\_value\_list\[user\_number\_seperator\]        | string            | The number separator of the logged in user. (I.e. comma for numbers in the 1,000.00 format)                    |
| name\_value\_list\[user\_decimal\_seperator\]       | string            | The decimal separator of the logged in user. (I.e. period for numbers in the 1,000.00 format)                  |
| name\_value\_list\[mobile\_max\_list\_entries\]     | int               | Max list entries for the logged in user (simply grabs the wl\_list\_max\_entries\_per\_subpanel config key)    |
| name\_value\_list\[mobile\_max\_subpanel\_entries\] | int               | Max subpanel entries for the logged in user(simply grabs the wl\_list\_max\_entries\_per\_subpanel config key) |

#### logout

Logs the web user out of SuiteCRM and destroys the session.

##### Arguments

logout arguments

| Name    | Type   | Desc                       |
|---------|--------|----------------------------|
| session | string | The session id. See login. |

##### Response

No response.

#### get\_available\_modules

Returns a list of the modules available for use. Also returns the ACL (Access Control List) for each module.

##### Arguments

get\_available\_modules arguments

| Name    | Type   | Desc                                                              |
|---------|--------|-------------------------------------------------------------------|
| session | string | The session id. See login.                                        |
| filter  | string | Filter the modules returned. Either ‘default’, ‘mobile’ or ‘all’. |

##### Response

get\_available\_modules response

| Name                              | Type   | Desc                                                                      |
|-----------------------------------|--------|---------------------------------------------------------------------------|
| modules                           | array  | An array containing the module details.                                   |
| modules\[\]\[module\_key\]        | string | The key for this module                                                   |
| modules\[\]\[module\_label\]      | string | The label for this module                                                 |
| modules\[\]\[favorite\_enabled\]  | bool   | Favorites were SugarCRM Professional functionality. This is always empty. |
| modules\[\]\[acls\]               | array  | An array containing the ACL list - that is what actions are allowed.      |
| modules\[\]\[acls\]\[\]\[action\] | string | The action i.e. edit, delete, list etc.                                   |
| modules\[\]\[acls\]\[\]\[access\] | bool   | Whether or not access is allowed.                                         |

#### get\_document\_revision

Returns the details for a specific document revision.

##### Arguments

get\_document\_revision arguments

| Name    | Type   | Desc                                        |
|---------|--------|---------------------------------------------|
| session | string | The session id. See login.                  |
| i       | string | The id of the document revision to retrieve |

##### Response

get\_document\_revision response

| Name                                 | Type          | Desc                                              |
|--------------------------------------|---------------|---------------------------------------------------|
| document\_revision                   | array         | An array containing the document revision details |
| document\_revision\[id\]             | string        | The id of the document revision.                  |
| document\_revision\[document\_name\] | string        | The name of the document revision                 |
| document\_revision\[revision\]       | int           | The revision number of the document revision.     |
| document\_revision\[filename\]       | string        | The filename of the file                          |
| document\_revision\[file\]           | binary string | The full contents of the file                     |

#### get\_entries

Gets a list of entries for a specific module and list of module ids. Optionally allows returning related records.

##### Arguments

get\_entries arguments

| Name                                           | Type              | Desc                                                                 |
|------------------------------------------------|-------------------|----------------------------------------------------------------------|
| session                                        | string            | The session id. See login.                                           |
| module\_name                                   | string            | The name of the module to display entries for.                       |
| ids                                            | array             | An array of record ids to fetch                                      |
| ids\[\]                                        | string            | An individual id                                                     |
| select\_fields                                 | array             | An array of fields to return. An empty array will return all fields. |
| select\_fields\[\]                             | string            | The name of a field to return                                        |
| link\_name\_to\_fields\_array                  | name\_value\_list | An array of relationships to retrieved.                              |
| link\_name\_to\_fields\_array\[\]\[name\]      | string            | The name of the link to follow (as defined in `module_name`).        |
| link\_name\_to\_fields\_array\[\]\[value\]     | array             | An array of the fields to return for this related module.            |
| link\_name\_to\_fields\_array\[\]\[value\]\[\] | string            | The field name                                                       |
| track\_view                                    | bool              | Whether to mark these records as recently viewed.                    |

##### Response

get\_entries response

| Name                                                                        | Type              | Desc                                                                          |
|-----------------------------------------------------------------------------|-------------------|-------------------------------------------------------------------------------|
| entry\_list                                                                 | array             | An array of records.                                                          |
| entry\_list\[\]                                                             | array             | Details for an individual record.                                             |
| entry\_list\[\]\[id\]                                                       | string            | The id of this record.                                                        |
| entry\_list\[\]\[module\_name\]                                             | string            | The name of the module this record belongs to.                                |
| entry\_list\[\]\[name\_value\_list\]                                        | name\_value\_list | An array containing each returned field.                                      |
| entry\_list\[\]\[name\_value\_list\]\[\]                                    | array             | Details for an individual field.                                              |
| entry\_list\[\]\[name\_value\_list\]\[\]\[name\]                            | string            | The name of the field.                                                        |
| entry\_list\[\]\[name\_value\_list\]\[\]\[value\]                           | string            | The value of the field.                                                       |
| relationship\_list                                                          | array             | An array of arrays containing the relationships for the corresponding record. |
| relationship\_list\[\]                                                      | array             | The relationships for the corresponding record.                               |
| relationship\_list\[link\_list\]                                            | array             | The list of relationships for this record.                                    |
| relationship\_list\[link\_list\]\[\]                                        | array             | Details of a single relationship.                                             |
| relationship\_list\[link\_list\]\[\]\[name\]                                | string            | The name of this relationship.                                                |
| relationship\_list\[link\_list\]\[\]\[records\]                             | array             | The related records for this relationship.                                    |
| relationship\_list\[link\_list\]\[\]\[records\]\[\]                         | array             | Details of a single related record.                                           |
| relationship\_list\[link\_list\]\[\]\[records\]\[\]\[link\_value\]          | name\_value\_list | An array of the requested fields for this relationship.                       |
| relationship\_list\[link\_list\]\[\]\[records\]\[\]\[link\_value\]\[\]      | array             | A name value pair for this particular field.                                  |
| relationship\_list\[link\_list\]\[\]\[records\]\[\]\[link\_value\]\[name\]  | string            | The name of the field.                                                        |
| relationship\_list\[link\_list\]\[\]\[records\]\[\]\[link\_value\]\[value\] | string            | The value of the field.                                                       |

#### get\_entries\_count

Returns a count of entries matching the given query.

##### Arguments

get\_entries\_count arguments

| Name         | Type   | Desc                                           |
|--------------|--------|------------------------------------------------|
| session      | string | The session id. See login.                     |
| module\_name | string | The name of the module to display entries for. |
| query        | string | An SQL WHERE clause to apply to the query.     |
| deleted      | bool   | Whether to include deleted records             |

##### Response

get\_entries\_count response

| Name          | Type | Desc                           |
|---------------|------|--------------------------------|
| result\_count | int  | The count of matching entries. |

#### get\_entry

Returns the details for a single record. Optionally allows returning related records.

##### Arguments

get\_entry arguments

| Name                                           | Type              | Desc                                                                 |
|------------------------------------------------|-------------------|----------------------------------------------------------------------|
| session                                        | string            | The session id. See login.                                           |
| module\_name                                   | string            | The name of the module to fetch the entry for.                       |
| id                                             | string            | The id of the record to fetch                                        |
| select\_fields                                 | array             | An array of fields to return. An empty array will return all fields. |
| select\_fields\[\]                             | string            | The name of a field to return                                        |
| link\_name\_to\_fields\_array                  | name\_value\_list | An array of relationships to retrieved.                              |
| link\_name\_to\_fields\_array\[\]\[name\]      | string            | The name of the link to follow (as defined in `module_name`).        |
| link\_name\_to\_fields\_array\[\]\[value\]     | array             | An array of the fields to return for this related module.            |
| link\_name\_to\_fields\_array\[\]\[value\]\[\] | string            | The field name                                                       |
| track\_view                                    | bool              | Whether to mark these records as recently viewed.                    |

##### Response

Identical to the response by `get_entries` except only one record will be returned.

#### `get_entry_list`

##### Arguments

get\_entry\_list arguments

| Name                                           | Type              | Desc                                                                 |
|------------------------------------------------|-------------------|----------------------------------------------------------------------|
| session                                        | string            | The session id. See login.                                           |
| module\_name                                   | string            | The name of the module to fetch the entry for.                       |
| query                                          | string            | An SQL WHERE clause to apply to the query.                           |
| order\_by                                      | string            | In theory for ordering results but this is unused.                   |
| offset                                         | int               | The result offset. Useful for pagination.                            |
| select\_fields                                 | array             | An array of fields to return. An empty array will return all fields. |
| select\_fields\[\]                             | string            | The name of a field to return                                        |
| link\_name\_to\_fields\_array                  | name\_value\_list | An array of relationships to retrieved.                              |
| link\_name\_to\_fields\_array\[\]\[name\]      | string            | The name of the link to follow (as defined in `module_name`).        |
| link\_name\_to\_fields\_array\[\]\[value\]     | array             | An array of the fields to return for this related module.            |
| link\_name\_to\_fields\_array\[\]\[value\]\[\] | string            | The field name                                                       |
| max\_results                                   | int               | The maximum number of results to return. Useful for pagination.      |
| deleted                                        | bool              | Whether to include deleted records.                                  |
| favorites                                      | bool              | Favorites were SugarCRM Professional functionality. This is unused.  |

##### Response

get\_entry\_list response

| Name                                                                        | Type              | Desc                                                                          |
|-----------------------------------------------------------------------------|-------------------|-------------------------------------------------------------------------------|
| result\_count                                                               | int               | The number of returned records.                                               |
| total\_count                                                                | int               | The total number of records matching the query.                               |
| next\_offset                                                                | int               | The offset of the next set of records.                                        |
| entry\_list                                                                 | array             | An array of records.                                                          |
| entry\_list\[\]                                                             | array             | Details for an individual record.                                             |
| entry\_list\[\]\[id\]                                                       | string            | The id of this record.                                                        |
| entry\_list\[\]\[module\_name\]                                             | string            | The name of the module this record belongs to.                                |
| entry\_list\[\]\[name\_value\_list\]                                        | name\_value\_list | An array containing each returned field.                                      |
| entry\_list\[\]\[name\_value\_list\]\[\]                                    | array             | Details for an individual field.                                              |
| entry\_list\[\]\[name\_value\_list\]\[\]\[name\]                            | string            | The name of the field.                                                        |
| entry\_list\[\]\[name\_value\_list\]\[\]\[value\]                           | string            | The value of the field.                                                       |
| relationship\_list                                                          | array             | An array of arrays containing the relationships for the corresponding record. |
| relationship\_list\[\]                                                      | array             | The relationships for the corresponding record.                               |
| relationship\_list\[link\_list\]                                            | array             | The list of relationships for this record.                                    |
| relationship\_list\[link\_list\]\[\]                                        | array             | Details of a single relationship.                                             |
| relationship\_list\[link\_list\]\[\]\[name\]                                | string            | The name of this relationship.                                                |
| relationship\_list\[link\_list\]\[\]\[records\]                             | array             | The related records for this relationship.                                    |
| relationship\_list\[link\_list\]\[\]\[records\]\[\]                         | array             | Details of a single related record.                                           |
| relationship\_list\[link\_list\]\[\]\[records\]\[\]\[link\_value\]          | name\_value\_list | An array of the requested fields for this relationship.                       |
| relationship\_list\[link\_list\]\[\]\[records\]\[\]\[link\_value\]\[\]      | array             | A name value pair for this particular field.                                  |
| relationship\_list\[link\_list\]\[\]\[records\]\[\]\[link\_value\]\[name\]  | string            | The name of the field.                                                        |
| relationship\_list\[link\_list\]\[\]\[records\]\[\]\[link\_value\]\[value\] | string            | The value of the field.                                                       |

#### get\_language\_definition

Returns

##### Arguments

get\_language\_definition arguments

| Name        | Type   | Desc                                                                            |
|-------------|--------|---------------------------------------------------------------------------------|
| session     | string | The session id. See login.                                                      |
| modules     | array  | An array of the modules to return language labels for                           |
| modules\[\] | string | The modules name.                                                               |
| md5         | bool   | Whether to return the md5 for each module. Can be useful for caching responses. |

##### Response

get\_language\_definition response

| Name                                            | Type         | Desc                                                             |
|-------------------------------------------------|--------------|------------------------------------------------------------------|
| result\[&lt;modulename&gt;\]&lt;/modulename&gt; | string/array | An array of the labels or an md5 string for &lt;modulename /&gt; |

#### `get_last_viewed`

Returns a list of the most recently viewed modules for the current user.

##### Arguments

get\_last\_viewed arguments

| Name              | Type   | Desc                                                           |
|-------------------|--------|----------------------------------------------------------------|
| session           | string | The session id. See login.                                     |
| module\_names     | array  | An array of the modules to return the last viewed records for. |
| module\_names\[\] | string | The modules name.                                              |

##### Response

get\_last\_viewed response

| Name                         | Type   | Desc                                                  |
|------------------------------|--------|-------------------------------------------------------|
| result\[\]                   | array  | An array of the details of recently viewed records    |
| result\[\]\[id\]             | int    | The id of the tracker row for this viewing            |
| result\[\]\[item\_id\]       | string | The id of the viewed record.                          |
| result\[\]\[item\_summary\]  | string | The summary of the record. This is usually it’s name. |
| result\[\]\[module\_name\]   | string | The module for this record.                           |
| result\[\]\[monitor\_id\]    | string | The monitor id for this viewing. Legacy and unused.   |
| result\[\]\[date\_modified\] | string | The date that this record was viewed.                 |

#### `get_modified_relationships`

Returns a list of the modified relationships for the current user between one of the Calls, Meetings or Contacts modules.

##### Arguments

get\_modified\_relationships arguments

| Name               | Type   | Desc                                                                                                 |
|--------------------|--------|------------------------------------------------------------------------------------------------------|
| session            | string | The session id. See login.                                                                           |
| module\_name       | string | The name of the module to retrieve relationships for. Always `Users`.                                |
| related\_module    | string | The related module to retrieve records for. One of `Meetings`, `Calls` or `Contacts`.                |
| from\_date         | string | The start date of the range to search. In the format `Y-m-d H:i:s`.                                  |
| to\_date           | string | The end date of the range to search. In the format `Y-m-d H:i:s`.                                    |
| offset             | int    | The record offset to start with.                                                                     |
| max\_results       | int    | The maximum number of results to return.                                                             |
| deleted            | bool   | Whether to include deleted records.                                                                  |
| module\_user\_id   | string | In theory the id of the user to return relationships for. However the current user is always used.   |
| select\_fields     | array  | An array of the fields to return for the relationship record. An empty array will return all fields. |
| select\_fields\[\] | string | The name of the field to return.                                                                     |
| relationship\_name | string | The name of the relationship between `module_name` and `related_module`.                             |
| deletion\_date     | string | A start date for the range in which to return deleted records. In the format `Y-m-d H:i:s`.          |

##### Response

get\_modified\_relationships response

| Name                                              | Type              | Desc                                           |
|---------------------------------------------------|-------------------|------------------------------------------------|
| result\_count                                     | int               | The number of returned records.                |
| next\_offset                                      | int               | The offset of the next set of records.         |
| entry\_list                                       | array             | An array of the returned records.              |
| entry\_list\[\]                                   | array             | Details for an individual record.              |
| entry\_list\[\]\[id\]                             | string            | The id of this record.                         |
| entry\_list\[\]\[module\_name\]                   | string            | The name of the module this record belongs to. |
| entry\_list\[\]\[name\_value\_list\]              | name\_value\_list | An array containing each returned field.       |
| entry\_list\[\]\[name\_value\_list\]\[\]          | array             | A name value pair of the field information.    |
| entry\_list\[\]\[name\_value\_list\]\[\]\[name\]  | string            | The name of the field.                         |
| entry\_list\[\]\[name\_value\_list\]\[\]\[value\] | string            | The value of the field.                        |
| error                                             | array             | An array containing the error details.         |
| error\[number\]                                   | int               | The error number of the error that occurred.   |
| error\[name\]                                     | string            | The name of the error that occurred.           |
| error\[description\]                              | string            | A description of the error that occurred.      |

#### `get_module_fields`

Returns the field definitions for a given module.

##### Arguments

get\_module\_fields arguments

| Name         | Type   | Desc                                                                                 |
|--------------|--------|--------------------------------------------------------------------------------------|
| session      | string | The session id. See login.                                                           |
| module\_name | string | The name of the module to return field definitions for.                              |
| fields       | array  | An array of fields to return definitions for. An empty array will return all fields. |
| fields\[\]   | string | The name of the field.                                                               |

##### Response

get\_module\_fields response

| Name                                   | Type              | Desc                                                                                                            |
|----------------------------------------|-------------------|-----------------------------------------------------------------------------------------------------------------|
| module\_name                           | string            | The name of the module.                                                                                         |
| table\_name                            | string            | The name of the database table for this module.                                                                 |
| module\_fields                         | array             | An array of the requested fields for this module.                                                               |
| module\_fields\[\]                     | array             | The details of a specific field.                                                                                |
| module\_fields\[name\]                 | string            | The name of the field.                                                                                          |
| module\_fields\[type\]                 | string            | The type of the field.                                                                                          |
| module\_fields\[group\]                | string            | The group of fields that this field belongs to. Used for addresses or link definitions.                         |
| module\_fields\[id\_name\]             | string            | The name of the id field on this module for this link if appropriate.                                           |
| module\_fields\[label\]                | string            | The display label for this field.                                                                               |
| module\_fields\[required\]             | bool              | Whether this field is required or not.                                                                          |
| module\_fields\[options\]              | name\_value\_list | An array of possible options for this field. An empty array if options are not appropriate for this field type. |
| module\_fields\[options\]\[\]          | array             | A name value pair of a single option.                                                                           |
| module\_fields\[options\]\[\]\[name\]  | string            | The options key.                                                                                                |
| module\_fields\[options\]\[\]\[value\] | string            | The options display value.                                                                                      |
| module\_fields\[related\_module\]      | string            | The related module for this field if it is a related type. Empty otherwise.                                     |
| module\_fields\[calculated\]           | string            | Calculated fields were a SugarCRM professional feature. Will be empty.                                          |
| module\_fields\[len\]                  | int               | The length of this field or an empty string if this is not appropriate for this field type.                     |
| link\_fields                           | array             | An array of the requested link fields for this module.                                                          |
| link\_fields\[\]                       | array             | The details of a specific field.                                                                                |
| link\_fields\[name\]                   | string            | The name of the field.                                                                                          |
| link\_fields\[type\]                   | string            | The type of the field. Will always be link.                                                                     |
| link\_fields\[group\]                  | string            | The group of fields that this field belongs to. Will be empty for links.                                        |
| link\_fields\[id\_name\]               | string            | The name of the id field on this module for this link if appropriate.                                           |
| link\_fields\[relationship\]           | string            | The relationship name for this link.                                                                            |
| link\_fields\[module\]                 | string            | The module this field links to.                                                                                 |
| link\_fields\[bean\_name\]             | string            | The bean that this field links to.                                                                              |

#### `get_module_fields_md5`

Returns an md5 of the a modules field definitions. Useful for caching.

##### Arguments

get\_module\_fields\_md5 arguments

| Name              | Type   | Desc                                                            |
|-------------------|--------|-----------------------------------------------------------------|
| session           | string | The session id. See login.                                      |
| module\_names     | array  | An array of modules to return the md5 for.                      |
| module\_names\[\] | string | The name of the module to return the field definitions md5 for. |

##### Response

get\_module\_fields\_md5 response

| Name                                            | Type   | Desc                                            |
|-------------------------------------------------|--------|-------------------------------------------------|
| result\[\]                                      | array  | An array of the md5’s keyed by the module name. |
| result\[&lt;modulename&gt;\]&lt;/modulename&gt; | string | The md5 string for &lt;modulename /&gt;         |

#### `get_module_layout`

Returns the layout for specified modules and views. Optionally returns an md5 of the layouts.

##### Arguments

get\_module\_layout arguments

| Name        | Type   | Desc                                                                              |
|-------------|--------|-----------------------------------------------------------------------------------|
| session     | string | The session id. See login.                                                        |
| modules     | array  | An array of the modules to return layouts for.                                    |
| modules\[\] | string | The name of the module.                                                           |
| types       | array  | An array of the types of views to return. Only `default` is supported.            |
| types\[\]   | string | The type of the views.                                                            |
| views       | array  | An array of the views to return. One of `edit`, `detail`, `list` and `subpanel`.  |
| views\[\]   | string | The name of the view.                                                             |
| acl\_check  | bool   | Whether or not to check that the current user has access to this module and view. |
| md5         | bool   | Whether or not to return the view as an md5 string. Useful for caching.           |

##### Response

get\_module\_layout response

| Name                                                                                            | Type         | Desc                                                                                                                                                                                      |
|-------------------------------------------------------------------------------------------------|--------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| result                                                                                          | array        | The array of results keyed by module name.                                                                                                                                                |
| result\[&lt;modulename&gt;\]&lt;/modulename&gt;                                                 | array        | An array of layouts for &lt;modulename&gt;.&lt;/modulename&gt;                                                                                                                            |
| result\[&lt;modulename&gt;\]\[default\]&lt;/modulename&gt;                                      | array        | An array of the layouts keyed by the view name.                                                                                                                                           |
| result\[&lt;modulename&gt;\]\[default\]\[&lt;viewname&gt;\]&lt;/viewname&gt;&lt;/modulename&gt; | array/string | The layout of the view &lt;viewname&gt; for the module &lt;modulename&gt; or an md5 of the layout. See the section on metadata for the layout format.&lt;/modulename&gt;&lt;/viewname&gt; |

#### `get_module_layout_md5`

Returns the md5 of the specified views for the specified modules. Behaves identically to get\_module\_layout with the md5 parameter set to true.

##### Arguments

get\_module\_layout arguments

| Name        | Type   | Desc                                                                              |
|-------------|--------|-----------------------------------------------------------------------------------|
| session     | string | The session id. See login.                                                        |
| modules     | array  | An array of the modules to return layouts for.                                    |
| modules\[\] | string | The name of the module.                                                           |
| types       | array  | An array of the types of views to return. Only `default` is supported.            |
| types\[\]   | string | The type of the views.                                                            |
| views       | array  | An array of the views to return. One of `edit`, `detail`, `list` and `subpanel`.  |
| views\[\]   | string | The name of the view.                                                             |
| acl\_check  | bool   | Whether or not to check that the current user has access to this module and view. |

##### Response

get\_module\_layout\_md5 response

| Name                                                                                         | Type   | Desc                                                                                                                             |
|----------------------------------------------------------------------------------------------|--------|----------------------------------------------------------------------------------------------------------------------------------|
| md5                                                                                          | array  | The array of results keyed by module name.                                                                                       |
| md5\[&lt;modulename&gt;\]&lt;/modulename&gt;                                                 | array  | An array of layouts for &lt;modulename&gt;.&lt;/modulename&gt;                                                                   |
| md5\[&lt;modulename&gt;\]\[default\]&lt;/modulename&gt;                                      | array  | An array of the layouts keyed by the view name.                                                                                  |
| md5\[&lt;modulename&gt;\]\[default\]\[&lt;viewname&gt;\]&lt;/viewname&gt;&lt;/modulename&gt; | string | The md5 of the layout layout of the view &lt;viewname&gt; for the module &lt;modulename&gt;.&lt;/modulename&gt;&lt;/viewname&gt; |

#### `get_relationships`

Returns related records given a specific module, record and list of links. \#\#\#\#Arguments

get\_relationships arguments

| Name                                                            | Type              | Desc                                                       |     |
|-----------------------------------------------------------------|-------------------|------------------------------------------------------------|-----|
| session                                                         | string            | The session id. See login.                                 |     |
| module\_name                                                    | string            | The module to return relationships for.                    |     |
| module\_id                                                      | string            | The record to return relationships for.                    |     |
| link\_field\_name                                               | string            | The link field to follow for this record.                  |     |
| related\_module\_query                                          | string            | A WHERE clause to use to filter the related modules by.    |     |
| related\_fields                                                 | array             | An array of the fields to return for matching records.     |     |
| related\_fields\[\]                                             | string            | The name of the field.                                     |     |
| related\_module\_link\_name\_to\_fields\_array                  | name\_value\_list | An array of related fields to return for matching records. |     |
| related\_module\_link\_name\_to\_fields\_array\[\]              | array             | Details for a specific link.                               |     |
| related\_module\_link\_name\_to\_fields\_array\[\]\[name\]      | string            | The name of the link to follow for matching records.       |     |
| related\_module\_link\_name\_to\_fields\_array\[\]\[value\]     | array             | An array of fields to return for this link.                |     |
| related\_module\_link\_name\_to\_fields\_array\[\]\[value\]\[\] | string            | The field name.                                            |     |
| deleted                                                         | bool              | Whether to include deleted records.                        |     |
| order\_by                                                       | string            | In theory for ordering results but this is unused.         |     |
| offset                                                          | int               | The record offset to start with.                           |     |
| limit                                                           | int               | The maximum number of results to return.                   |     |

##### Response

Identical to the response by `get_entries`.

#### `get_server_info`

Returns information about the SuiteCRM server. Currently still returns information about the SugarCRM flavor and versions.

##### Arguments

No arguments.

##### Response

get\_server\_info response

| Name      | Type   | Desc                                                                       |
|-----------|--------|----------------------------------------------------------------------------|
| flavor    | string | The SugarCRM flavor. For SuiteCRM will always be ‘CE’.                     |
| version   | string | The SugarCRM version. Note this this is distinct from the SuiteCRM version |
| gmt\_time | string | The server time in UTC.                                                    |

#### `get_upcoming_activities`

Returns a list of the 10 upcoming activities (Meetings, Calls and Tasks - also includes Opportunities) for the currently logged in user.

##### Arguments

get\_upcoming\_activities arguments

| Name    | Type   | Desc                       |
|---------|--------|----------------------------|
| session | string | The session id. See login. |

##### Response

get\_upcoming\_activities response

| Name                    | Type   | Desc                                                    |
|-------------------------|--------|---------------------------------------------------------|
| result                  | array  | An array of the upcoming activities.                    |
| result\[\]              | array  | The details of a single activity.                       |
| result\[\]\[id\]        | string | The id of this activity.                                |
| result\[\]\[module\]    | string | The module for this activity.                           |
| result\[\]\[date\_due\] | string | The due date for this activity.                         |
| result\[\]\[summary\]   | string | The summary of this activity. Usually simply it’s name. |

#### `get_user_id`

Returns the id of the currently logged in user.

##### Arguments

get\_user\_id arguments

| Name    | Type   | Desc                       |
|---------|--------|----------------------------|
| session | string | The session id. See login. |

##### Response

get\_user\_id response

| Name | Type   | Desc                        |
|------|--------|-----------------------------|
| id   | string | The id of the current user. |

#### `seamless_login`

Marks a session as allowing a seamless login. If successful then the session id (see the login call) can be used in a URL (as MSID) to log the user into SuiteCRM in the browser seamlessly. For example if you have the session id `1234` then accessing the URL `example.com/index.php?MSID=1234`. The MSID parameter can be used in any valid SuiteCRM URL.

##### Arguments

seamless\_login arguments

| Name    | Type   | Desc                       |
|---------|--------|----------------------------|
| session | string | The session id. See login. |

##### Response

seamless\_login response

| Name   | Type | Desc                       |
|--------|------|----------------------------|
| result | bool | Boolean indicating success |

#### `search_by_module`

Allows searching for records that contain a specific search string.

##### Arguments

search\_by\_module arguments

| Name                  | Type   | Desc                                                                                           |
|-----------------------|--------|------------------------------------------------------------------------------------------------|
| session               | string | The session id. See login.                                                                     |
| search\_string        | string | The string to search for.                                                                      |
| modules               | array  | An array of the modules to include in the search.                                              |
| modules\[\]           | string | The modules name.                                                                              |
| offset                | int    | The result offset. Useful for pagination.                                                      |
| max\_results          | int    | The maximum number of results to return. Useful for pagination.                                |
| assigned\_user\_id    | string | Filter by the given assigned user. Leave blank to do no user filtering.                        |
| select\_fields        | array  | An array of the fields to return for the found records. An empty array will return all fields. |
| select\_fields\[\]    | string | The name of the field to return.                                                               |
| unified\_search\_only | bool   | Whether to only return records for modules that participate in the global search.              |
| favorites             | bool   | Favorites were SugarCRM Professional functionality. This is unused.                            |

##### Response

search\_by\_module response

| Name                                   | Type              | Desc                                                         |
|----------------------------------------|-------------------|--------------------------------------------------------------|
| entry\_list                            | array             | An array of the results for each module.                     |
| entry\_list\[\]                        | array             | Results for a specific module.                               |
| entry\_list\[\]\[name\]                | string            | The name of the module that this entry contains results for. |
| entry\_list\[\]\[records\]             | array             | An array of the record results.                              |
| entry\_list\[\]\[records\]\[\]         | name\_value\_list | A name value list of records id and name.                    |
| entry\_list\[\]\[records\]\[\]\[id\]   | array             | A name value pair containing the id of this record.          |
| entry\_list\[\]\[records\]\[\]\[name\] | array             | A name value pair containing the name of this record.        |

#### `set_document_revision`

Creates a new document revision for a document.

##### Arguments

set\_document\_revision arguments

| Name             | Type          | Desc                                               |
|------------------|---------------|----------------------------------------------------|
| session          | string        | The session id. See login.                         |
| note             | array         | An array containing the document revision details. |
| note\[id\]       | string        | The id of the document to add this revision to.    |
| note\[file\]     | binary string | The binary contents of the file, base 64 encoded.  |
| note\[filename\] | string        | The name of the file.                              |
| note\[revision\] | int           | The revision number for this revision.             |

##### Response

set\_document\_revision response

| Name | Type   | Desc                                           |
|------|--------|------------------------------------------------|
| id   | string | The id of the newly created document revision. |

#### `set_entries`

Creates or updates a list of records.

##### Arguments

Note: Supplying a value for the id field will perform an update for that record.

set\_entries arguments

| Name                                | Type              | Desc                                                      |
|-------------------------------------|-------------------|-----------------------------------------------------------|
| session                             | string            | The session id. See login.                                |
| module\_name                        | string            | The name of the module to create/update records for.      |
| name\_value\_lists                  | name\_value\_list | An array of the details for each record to create/update. |
| name\_value\_lists\[\]              | array             | Details of an individual record.                          |
| name\_value\_lists\[\]\[\]          | array             | A name value pair for each field value.                   |
| name\_value\_lists\[\]\[\]\[name\]  | array             | The name of the field.                                    |
| name\_value\_lists\[\]\[\]\[value\] | array             | The value for the field.                                  |

##### Response

set\_entries response

| Name    | Type  | Desc                                                                                                 |
|---------|-------|------------------------------------------------------------------------------------------------------|
| ids     | array | An array of the resulting ids. Returned in the same order as specified in the call to `set_entries`. |
| ids\[\] | array | The id for this record.                                                                              |

#### `set_entry`

Creates or updates a single record.

##### Arguments

Note: Supplying a value for the id field will perform an update for that record.

set\_entries arguments

| Name                            | Type              | Desc                                                  |
|---------------------------------|-------------------|-------------------------------------------------------|
| session                         | string            | The session id. See login.                            |
| module\_name                    | string            | The name of the module to create/update a record for. |
| name\_value\_list               | name\_value\_list | An array of the fields for the new/updated record.    |
| name\_value\_lists\[\]          | array             | A name value pair for each field value.               |
| name\_value\_lists\[\]\[name\]  | array             | The name of the field.                                |
| name\_value\_lists\[\]\[value\] | array             | The value for the field.                              |

##### Response

set\_entries response

| Name | Type   | Desc                                           |
|------|--------|------------------------------------------------|
| id   | string | The id of the newly created or updated record. |

#### `get_note_attachment`

Returns the details of a given note attachment.

##### Arguments

get\_note\_attachment arguments

| Name    | Type   | Desc                                            |
|---------|--------|-------------------------------------------------|
| session | string | The session id. See login.                      |
| id      | string | The id of the note to retrieve information for. |

##### Response

get\_note\_attachment response

| Name                                      | Type          | Desc                                                         |
|-------------------------------------------|---------------|--------------------------------------------------------------|
| note\_attachment                          | array         | The details for the note attachment.                         |
| note\_attachment\[id\]                    | string        | The id of the note to retrieve information for.              |
| note\_attachment\[filename\]              | string        | The filename of the file                                     |
| note\_attachment\[file\]                  | binary string | The full contents of the file                                |
| note\_attachment\[related\_module\_id\]   | string        | The id of the record that this attachment is related to.     |
| note\_attachment\[related\_module\_name\] | string        | The module of the record that this attachment is related to. |

#### `set_note_attachment`

Creates a not attachment for a specified record.

##### Arguments

set\_note\_attachment arguments

| Name             | Type          | Desc                                           |
|------------------|---------------|------------------------------------------------|
| session          | string        | The session id. See login.                     |
| note             | array         | The details for the note attachment.           |
| note\[id\]       | string        | The id of the note to add an attachment for.   |
| note\[filename\] | string        | The filename of the file                       |
| note\[file\]     | binary string | The full contents of the file base 64 encoded. |

##### Response

set\_entries response

| Name | Type   | Desc                                    |
|------|--------|-----------------------------------------|
| id   | string | The id of the note for this attachment. |

#### `set_relationship`

Sets a relationship between a record and other records.

##### Arguments

set\_relationship arguments

| Name                           | Type              | Desc                                                                                 |
|--------------------------------|-------------------|--------------------------------------------------------------------------------------|
| session                        | string            | The session id. See login.                                                           |
| module\_name                   | string            | The name of the module to relate records to.                                         |
| module\_id                     | string            | The id of the record to relate records to.                                           |
| link\_field\_name              | string            | The name of the link field on the module through which records will be related.      |
| related\_ids                   | array             | An array of record ids to relate.                                                    |
| related\_ids\[\]               | string            | The id of a record to relate.                                                        |
| name\_value\_list              | name\_value\_list | A name value list of additional relationship fields to set.                          |
| name\_value\_list\[\]          | array             | A name value pair for a relationship field to set.                                   |
| name\_value\_list\[\]\[name\]  | string            | The name of the field to set.                                                        |
| name\_value\_list\[\]\[value\] | string            | The value of the field to set.                                                       |
| delete                         | bool              | Whether or not to delete the specified relationship instead of creating/updating it. |

##### Response

set\_relationship response

| Name    | Type | Desc                                                           |
|---------|------|----------------------------------------------------------------|
| created | int  | The number of relationships created.                           |
| failed  | int  | The number of relationships that failed to be created/deleted. |
| deleted | int  | The number of relationships deleted.                           |

#### `set_relationships`

Sets relationships between multiple records.

##### Arguments

set\_relationships arguments

| Name                            | Type              | Desc                                                                                               |     |
|---------------------------------|-------------------|----------------------------------------------------------------------------------------------------|-----|
| session                         | string            | The session id. See login.                                                                         |     |
| module\_names                   | array             | An array of modules to relate records to.                                                          |     |
| module\_names\[\]               | string            | The name of the module to relate records to.                                                       |     |
| module\_ids                     | array             | An array of the ids of records to relate records to.                                               |     |
| module\_ids\[\]                 | string            | The id of the record to relate records to.                                                         |     |
| link\_field\_names              | string            | An array of the link names through which records will be related.                                  |     |
| link\_field\_names\[\]          | string            | The name of the link field on the module through which records will be related.                    |     |
| related\_ids                    | array             | An array of an array of record ids for each module specified.                                      |     |
| related\_ids\[\]                | array             | An array of record ids for the corresponding module.                                               |     |
| related\_ids\[\]\[\]            | string            | The record id.                                                                                     |     |
| name\_value\_lists              | array             | An array of an array of name value list of additional relationship fields to set.                  |     |
| name\_value\_lists\[\]          | name\_value\_list | An array of name value pairs for the relationship fields of the corresponding module.              |     |
| name\_value\_lists\[\]\[name\]  | string            | The name of the field to set.                                                                      |     |
| name\_value\_lists\[\]\[value\] | string            | The value of the field to set.                                                                     |     |
| delete\_array                   | array             | An array of booleans indicating whether or not the relationship should be deleted for each module. |     |
| delete\_array\[\]               | bool              | Whether or not to delete the specified relationship instead of creating/updating it.               |     |

##### Response

set\_relationships response

| Name    | Type | Desc                                                           |
|---------|------|----------------------------------------------------------------|
| created | int  | The number of relationships created.                           |
| failed  | int  | The number of relationships that failed to be created/deleted. |
| deleted | int  | The number of relationships deleted.                           |

</div>
