---
title: Working with Beans
weight: 3
---

Beans are the Model in SuiteCRM’s MVC (Model View Controller)
architecture. They allow retrieving data from the database as objects
and allow persisting and editing records. This section will go over the
various ways of working with beans.

### BeanFactory

The BeanFactory allows dynamically loading bean instances or creating
new records. For example to create a new bean you can use:

<div class="code-block">

Example 3.1: Creating a new Bean using the BeanFactory

------------------------------------------------------------------------

<div class="highlight">

<pre>1 $bean = BeanFactory::newBean('&lt;TheModule&gt;');
2 //For example a new account bean:
3 $accountBean = BeanFactory::newBean('Accounts');</pre>

</div>

------------------------------------------------------------------------

</div>

Retrieving an existing bean can be achieved in a similar manner:

<div class="code-block">

Example 3.2: Retrieving a bean with the BeanFactory

------------------------------------------------------------------------

<div class="highlight">

<pre>1 $bean = BeanFactory::getBean('&lt;TheModule&gt;', $beanId);
2 //For example to retrieve an account id
3 $bean = BeanFactory::getBean('Accounts', $beanId);</pre>

</div>

------------------------------------------------------------------------

</div>

<code>getBean</code> will return an unpopulated bean object if
<code>\$beanId</code> is not supplied or if there’s no such record.
Retrieving an unpopulated bean can be useful if you wish to use the
static methods of the bean (for example see the Searching for Beans
section). To deliberately retrieve an unpopulated bean you can omit the
second argument of the <code>getBean</code> call. I.e.

<div class="code-block">

Example 3.3: Retrieving an unpopulated bean

------------------------------------------------------------------------

<div class="highlight">

<pre>1 $bean = BeanFactory::getBean('&lt;TheModule&gt;');</pre>

</div>

------------------------------------------------------------------------

</div>

{| |width="50%"|
\[\[File:images/leanpub\_warning.png|50px|class=sidebar-image|warning\]\]
|width="50%"| <code>BeanFactory::getBean</code> caches ten results. This
can cause odd behaviour if you call <code>getBean</code> again and get a
cached copy. Any calls that return a cached copy will return the same
instance. This means changes to one of the beans will be reflected in
all the results. |}

Using BeanFactory ensures that the bean is correctly set up and the
necessary files are included etc.

### SugarBean

The SugarBean is the parent bean class and all beans in SuiteCRM extend
this class. It provides various ways of retrieving and interacting with
records.

### Searching for beans

The following examples show how to search for beans using a bean class.
The examples provided assume that an account bean is available names
\$accountBean. This may have been retrieved using the getBean call
mentioned in the BeanFactory section e.g.

<div class="code-block">

Example 3.4: Retrieving an unpopulated account bean

------------------------------------------------------------------------

<div class="highlight">

<pre>$accountBean = BeanFactory::getBean('Accounts');</pre>

</div>

------------------------------------------------------------------------

</div>

#### get\_list

The get\_list method allows getting a list of matching beans and allows
paginating the results.

<div class="code-block">

Example 3.5: get\_list method signature

------------------------------------------------------------------------

<div class="highlight">

<pre>1 get_list(
2     $order_by = &quot;&quot;,
3     $where = &quot;&quot;,
4     $row_offset = 0,
5     $limit=-1,
6     $max=-1,
7     $show_deleted = 0)</pre>

</div>

------------------------------------------------------------------------

</div>

; \$order\_by
:   Controls the ordering of the returned list. <code>\$order\_by</code>
    is specified as a string that will be used in the SQL ORDER BY
    clause e.g. to sort by name you can simply pass <code>name</code>,
    to sort by date\_entered descending use <code>date\_entered
    DESC</code>. You can also sort by multiple fields. For example
    sorting by date\_modified and id descending <code>date\_modified, id
    DESC</code>. ; \$where
:   Allows filtering the results using an SQL WHERE clause.
    <code>\$where</code> should be a string containing the SQL
    conditions. For example in the contacts module searching for
    contacts with specific first names we might use
    <code>contacts.first\_name='Jim'</code>. Note that we specify the
    table, the query may end up joining onto other tables so we want to
    ensure that there is no ambiguity in which field we target. ;
    \$row\_offset
:   The row to start from. Can be used to paginate the results. ;
    \$limit
:   The maximum number of records to be returned by the query. -1 means
    no limit. ; \$max
:   The maximum number of entries to be returned per page. -1 means the
    default max (usually 20). ; \$show\_deleted
:   Whether to include deleted results.

#### = Results \#\#\#\#=

get\_list will return an array. This will contain the paging information
and will also contain the list of beans. This array will contain the
following keys:

; list
:   An array of the beans returned by the list query ; row\_count
:   The total number of rows in the result ; next\_offset
:   The offset to be used for the next page or -1 if there are no
    further pages. ; previous\_offset
:   The offset to be used for the previous page or -1 if this is the
    first page. ; current\_offset
:   The offset used for the current results.

#### = Example \#\#\#\#=

Let’s look at a concrete example. We will return the third page of all
accounts with the industry <code>Media</code> using 10 as a page size
and ordered by name.

<div class="code-block">

Example 3.6: Example get\_list call

------------------------------------------------------------------------

<div class="highlight">

<pre> 1 $beanList = $accountBean-&gt;get_list(
 2                                 //Order by the accounts name
 3                                 'name',
 4                                 //Only accounts with industry 'Media'
 5                                 &quot;accounts.industry = 'Media'&quot;,
 6                                 //Start with the 30th record (third page)
 7                                 30,
 8                                 //No limit - will default to max page size
 9                                 -1,
10                                 //10 items per page
11                                 10);</pre>

</div>

------------------------------------------------------------------------

</div>

This will return:

<div class="code-block">

Example 3.7: Example get\_list results

------------------------------------------------------------------------

<div class="highlight">

<pre> 1 Array
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
13 )</pre>

</div>

------------------------------------------------------------------------

</div>

#### get\_full\_list

<code>get\_list</code> is useful when you need paginated results.
However if you are just interested in getting a list of all matching
beans you can use <code>get\_full\_list</code>. The
<code>get\_full\_list</code> method signature looks like this:

<div class="code-block">

Example 3.8: get\_full\_list method signature

------------------------------------------------------------------------

<div class="highlight">

<pre>1 get_full_list(
2             $order_by = &quot;&quot;,
3             $where = &quot;&quot;,
4             $check_dates=false,
5             $show_deleted = 0</pre>

</div>

------------------------------------------------------------------------

</div>

These arguments are identical to their usage in <code>get\_list</code>
the only difference is the <code>\$check\_dates</code> argument. This is
used to indicate whether the date fields should be converted to their
display values (i.e. converted to the users date format).

#### = Results \#\#\#\#=

The get\_full\_list call simply returns an array of the matching beans

#### = Example \#\#\#\#=

Let’s rework our <code>get\_list</code> example to get the full list of
matching accounts:

<div class="code-block">

Example 3.9: Example get\_full\_list call

------------------------------------------------------------------------

<div class="highlight">

<pre>1 $beanList = $accountBean-&gt;get_full_list(
2                                 //Order by the accounts name
3                                 'name',
4                                 //Only accounts with industry 'Media'
5                                 &quot;accounts.industry = 'Media'&quot;
6                                 );</pre>

</div>

------------------------------------------------------------------------

</div>

#### retrieve\_by\_string\_fields

Sometimes you only want to retrieve one row but may not have the id of
the record. <code>retrieve\_by\_string\_fields</code> allows retrieving
a single record based on matching string fields.

<div class="code-block">

Example 3.10: retrieve\_by\_string\_fields method signature

------------------------------------------------------------------------

<div class="highlight">

<pre>1 retrieve_by_string_fields(
2                           $fields_array,
3                           $encode=true,
4                           $deleted=true)</pre>

</div>

------------------------------------------------------------------------

</div>

; \$fields\_array
:   An array of field names to the desired value. ; \$encode
:   Whether or not the results should be HTML encoded. ; \$deleted
:   Whether or not to add the deleted filter.

{| |width="50%"|
\[\[File:images/leanpub\_warning.png|50px|class=sidebar-image|warning\]\]
|width="50%"| Note here that, confusingly, the deleted flag works
differently to the other methods we have looked at. It flags whether or
not we should filter out deleted results. So if true is passed then the
deleted results will ''not'' be included. |}

#### = Results \#\#\#\#=

retrieve\_by\_string\_fields returns a single bean as it’s result or
null if there was no matching bean.

#### = Example \#\#\#\#=

For example to retrieve the account with name <code>Tortoise Corp</code>
and account\_type <code>Customer</code> we could use the following:

<div class="code-block">

Example 3.11: Example retrieve\_by\_string\_fields call

------------------------------------------------------------------------

<div class="highlight">

<pre>1 $beanList = $accountBean-&gt;retrieve_by_string_fields(
2                                 array(
3                                   'name' =&gt; 'Tortoise Corp',
4                                   'account_type' =&gt; 'Customer'
5                                 )
6                               );</pre>

</div>

------------------------------------------------------------------------

</div>

### Accessing fields

If you have used one of the above methods we now have a bean record.
This bean represents the record that we have retrieved. We can access
the fields of that record by simply accessing properties on the bean
just like any other PHP object. Similarly we can use property access to
set the values of beans. Some examples are as follows:

<div class="code-block">

Example 3.12: Accessing fields examples

------------------------------------------------------------------------

<div class="highlight">

<pre> 1 //Get the Name field on account bean
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
14 $accountBean-&gt;billing_address_postalcode = '12345';</pre>

</div>

------------------------------------------------------------------------

</div>

When changes are made to a bean instance they are not immediately
persisted. We can save the changes to the database with a call to the
beans <code>save</code> method. Likewise a call to <code>save</code> on
a brand new bean will add that record to the database:

<div class="code-block">

Example 3.13: Persisting bean changes

------------------------------------------------------------------------

<div class="highlight">

<pre> 1 //Get the Name field on account bean
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
12 $caseBean-&gt;save();</pre>

</div>

------------------------------------------------------------------------

</div>

{| |width="50%"|
\[\[File:images/leanpub\_info-circle.png|50px|class=sidebar-image|information\]\]
|width="50%"| Whether to save or update a bean is decided by checking
the <code>id</code> field of the bean. If <code>id</code> is set then
SuiteCRM will attempt to perform an update. If there is no
<code>id</code> then one will be generated and a new record will be
inserted into the database. If for some reason you have supplied an
<code>id</code> but the record is new (perhaps in a custom import
script) then you can set <code>new\_with\_id</code> to true on the bean
to let SuiteCRM know that this record is new. |}

### Related beans

We have seen how to save single records but, in a CRM system,
relationships between records are as important as the records
themselves. For example an account may have a list of cases associated
with it, a contact will have an account that it falls under etc. We can
get and set relationships between beans using several methods.

#### get\_linked\_beans

The <code>get\_linked\_beans</code> method allows retrieving a list of
related beans for a given record.

<div class="code-block">

Example 3.14: get\_linked\_beans method signature

------------------------------------------------------------------------

<div class="highlight">

<pre>1 get_linked_beans(
2                 $field_name,
3                 $bean_name,
4                 $sort_array = array(),
5                 $begin_index = 0,
6                 $end_index = -1,
7                 $deleted=0,
8                 $optional_where=&quot;&quot;);</pre>

</div>

------------------------------------------------------------------------

</div>

; \$field\_name
:   The link field name for this link. Note that this is not the same as
    the name of the relationship. If you are unsure of what this should
    be you can take a look into the cached vardefs of a module in
    <code>cache/modules/&lt;TheModule&gt;/&lt;TheModule&gt;Vardefs.php</code>
    for the link definition. ; \$bean\_name
:   The name of the bean that we wish to retrieve. ; \$sort\_array
:   This is a legacy parameter and is unused. ; \$begin\_index
:   Skips the initial <code>\$begin\_index</code> results. Can be used
    to paginate. ; \$end\_index
:   Return up to the <code>\$end\_index</code> result. Can be used to
    paginate. ; \$deleted
:   Controls whether deleted or non deleted records are shown. If true
    only deleted records will be returned. If false only non deleted
    records will be returned. ; \$optional\_where
:   Allows filtering the results using an SQL WHERE clause. See the
    <code>get\_list</code> method for more details.

#### = Results \#\#\#\#=

<code>get\_linked\_beans</code> returns an array of the linked beans.

#### = Example \#\#\#\#=

<div class="code-block">

Example 3.15: Example get\_linked\_beans call

------------------------------------------------------------------------

<div class="highlight">

<pre>1 $accountBean-&gt;get_linked_beans(
2                 'contacts',
3                 'Contacts',
4                 array(),
5                 0,
6                 10,
7                 0,
8                 &quot;contacts.primary_address_country = 'USA'&quot;);</pre>

</div>

------------------------------------------------------------------------

</div>

#### relationships

In addition to the <code>get\_linked\_beans</code> call you can also
load and access the relationships more directly.

#### = Loading \#\#\#\#=

Before accessing a relationship you must use the
<code>load\_relationship</code> call to ensure it is available. This
call takes the link name of the relationship (not the name of the
relationship). As mentioned previously you can find the name of the link
in
<code>cache/modules/&lt;TheModule&gt;/&lt;TheModule&gt;Vardefs.php</code>
if you’re not sure.

<div class="code-block">

Example 3.16: Loading a relationship

------------------------------------------------------------------------

<div class="highlight">

<pre>1 //Load the relationship
2 $accountBean-&gt;load_relationship('contacts');
3 //Can now call methods on the relationship object:
4 $contactIds = $accountBean-&gt;contacts-&gt;get();</pre>

</div>

------------------------------------------------------------------------

</div>

#### = Methods \#\#\#\#=

###### <code>get</code>

Returns the ids of the related records in this relationship e.g for the
account - contacts relationship in the example above it will return the
list of ids for contacts associated with the account.

###### <code>getBeans</code>

Similar to <code>get</code> but returns an array of beans instead of
just ids.

{| |width="50%"|
\[\[File:images/leanpub\_warning.png|50px|class=sidebar-image|warning\]\]
|width="50%"| <code>getBeans</code> will load the full bean for each
related record. This may cause poor performance for relationships with a
large number of beans. |}

###### <code>add</code>

Allows relating records to the current bean. <code>add</code> takes a
single id or bean or an array of ids or beans. If the bean is available
this should be used since it prevents reloading the bean. For example to
add a contact to the relationship in our example we can do the
following:

<div class="code-block">

Example 3.18: Adding a new contact to a relationship

------------------------------------------------------------------------

<div class="highlight">

<pre> 1 //Load the relationship
 2 $accountBean-&gt;load_relationship('contacts');
 3
 4 //Create a new demo contact
 5 $contactBean = BeanFactory::newBean();
 6 $contactBean-&gt;first_name = 'Jim';
 7 $contactBean-&gt;last_name = 'Mackin';
 8 $contactBean-&gt;save();
 9
10 //Link the bean to $accountBean
11 $accountBean-&gt;contacts-&gt;add($contactBean);</pre>

</div>

------------------------------------------------------------------------

</div>

###### <code>delete</code>

<code>delete</code> allows unrelating beans. Counter-intuitively it
accepts the ids of both the bean and the related bean. For the related
bean you should pass the bean if it is available e.g when unrelating an
account and contact:

<div class="code-block">

Example 3.19: Removing a new contact from a relationship

------------------------------------------------------------------------

<div class="highlight">

<pre>1 //Load the relationship
2 $accountBean-&gt;load_relationship('contacts');
3
4 //Unlink the contact from the account - assumes $contactBean is a Contact SugarB\
5 ean
6 $accountBean-&gt;contacts-&gt;delete($accountBean-&gt;id, $contactBean);</pre>

</div>

------------------------------------------------------------------------

</div>

{| |width="50%"|
\[\[File:images/leanpub\_warning.png|50px|class=sidebar-image|warning\]\]
|width="50%"| Be careful with the delete method. Omitting the second
argument will cause all relationships for this link to be removed. |}

</div>
