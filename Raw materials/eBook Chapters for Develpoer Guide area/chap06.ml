---
permalink: "/chap06.html"
layout: page
title: "Chapter 06"
---
<span id="chap05.xhtml"></span>

<div>

## <span class="section-number">6. </span>Metadata ##

### Intro ###

Module metadata are used to describe how various views behave in the module. The main use of this is providing field and layout information but this can also be used to filter subpanels and to describe what fields are used in the search.

### Location ###

Module metadata can be found in:

<div class="code-block">

Example 6.1: Module metadata location


-----

<div class="highlight">

<pre>modules/&lt;TheModule&gt;/metadata/</pre>

</div>

-----


</div>
### Customising ###

Usually studio is the best way of customising metadata. Even when you do wish to make customisations that are not possible through studio it can be simpler to set everything up in studio first. This is particularly true for layout based metadata. However if you are customising metadata it is as simple as placing, or editing, the file in the custom directory. For example to override the Accounts detailviewdefs (found in <code>modules/Accounts/metadata/detailviewdefs.php</code>) we would place (or edit) the file in <code>custom/modules/Accounts/metadata/detailviewdefs.php</code>. One exception to this rule is the studio.php file. The modules metadata folder is the only location checked - any version in <code>custom/&lt;TheModule&gt;/metadata/studio.php</code> is ignored.

### Different metadata ###

#### detailviewdefs.php ####

detailviewdefs.php provides information on the layout and fields of the detail view for this module. This file uses the same structure as editviewdefs.php. Let’s look at an example for a fictional module <code>ABC_Vehicles</code>:

<div class="code-block">

Example 6.2: DetailView metadata definition


-----

<div class="highlight">

<pre> 1 &lt;?php
 2 $viewdefs ['ABC_Vehicles'] ['DetailView'] = array (
 3 	'templateMeta' =&gt; array (
 4 		'form' =&gt; array (
 5 			'buttons' =&gt; array (
 6 				'EDIT',
 7 				'DUPLICATE',
 8 				'DELETE',
 9 				'FIND_DUPLICATES'
10 			)
11 		),
12 		'maxColumns' =&gt; '2',
13 		'widths' =&gt; array (
14 			array (
15 				'label' =&gt; '10',
16 				'field' =&gt; '30'
17 			),
18 			array (
19 				'label' =&gt; '10',
20 				'field' =&gt; '30'
21 			)
22 		),
23 		'includes' =&gt; array (
24 			array (
25 				'file' =&gt; 'modules/ABC_Vehicles/ABC_VehiclesDetail.js'
26 			)
27 		)
28 	),
29 	'panels' =&gt; array (
30 		'LBL_ABC_VEHICLES_INFO' =&gt; array (
31 			array (
32 				array (
33 					'name' =&gt; 'name',
34 					'comment' =&gt; 'The Name of the Vehicle',
35 					'label' =&gt; 'LBL_NAME',
36 				),
37 				'reg_number'
38 			),
39 			array (
40 				array (
41 					'name' =&gt; 'type',
42 					'label' =&gt; 'LBL_TYPE',
43 				),
44 				array (
45 					'name' =&gt; 'phone_fax',
46 					'comment' =&gt; 'The fax phone number of this company',
47 					'label' =&gt; 'LBL_FAX'
48 				)
49 			),
50 			array (
51 				array (
52 					'name' =&gt; 'registered_address_street',
53 					'label' =&gt; 'LBL_REGISTERED_ADDRESS',
54 					'type' =&gt; 'address',
55 					'displayParams' =&gt; array (
56 						'key' =&gt; 'registered'
57 					)
58 				),
59 			),
60 		),
61 		'LBL_PANEL_ADVANCED' =&gt; array (
62       array (
63 				array (
64 					'name' =&gt; 'assigned_user_name',
65 					'label' =&gt; 'LBL_ASSIGNED_TO'
66 				),
67 				array (
68 					'name' =&gt; 'date_modified',
69 					'label' =&gt; 'LBL_DATE_MODIFIED',
70 					'customCode' =&gt; '{$fields.date_modified.value} '
71 							+ '{$APP.LBL_BY} '
72 							+ '{$fields.modified_by_name.value}',
73 				)
74 			),
75 		),
76 	)
77 );
78 ?&gt;</pre>

</div>

-----


</div>
We see that line 2 defines an array <code>$viewdefs['ABC_Vehicles']['DetailView']</code> which places a DetailView entry for the module ABC_Vehicles into <code>$viewdefs</code> (DetailView will be EditView or QuickCreateView as appropriate). This array has two main keys defined here:

####= templateMeta ####=

The templateMeta key provides information about the view in general. The <code>['form']['buttons']</code> entries define the buttons that should appear in this view.

; <code>maxColumns</code>
: Defines the number of columns to use for this view. It is unusual for this to be more than 2.
; <code>widths</code>
: An array defining the width of the label and field for each column.
; <code>includes</code>
: An array of additional JavaScript files to include. This is useful for adding custom JavaScript behaviour to the page.

####= panels ####=

The panels entry defines the actual layout of the Detail (or Edit) view. Each entry is a new panel in the view with the key being the label for that panel. We can see in our example that we have 2 panels. One uses the label defined by the language string <code>LBL_ABC_VEHICLES_INFO</code>, the other uses <code>LBL_PANEL_ADVANCED</code>.

Each panel has an array entry for each row, with each array containing an entry for each column. For example we can see that the first row has the following definition:

<div class="code-block">

Example 6.3: DetailView metadata row definition


-----

<div class="highlight">

<pre>31 array(
32 	array (
33 		'name' =&gt; 'name',
34 		'comment' =&gt; 'The Name of the Vehicle',
35 		'label' =&gt; 'LBL_NAME',
36 	),
37 	'reg_number',
38 ),</pre>

</div>

-----


</div>
This has an array definition for the first row, first column and a string definition for the first row, second column. The string definition is very straightforward and simply displays the detail (or edit, as appropriate) view for that field. It will use the default label, type, etc. In our example we are displaying the field named <code>reg_number</code>.

The array definition for the first row, first column is a little more complex. Each array definition must have a <code>name</code> value. In our example we are displaying the <code>name</code> field. However we also supply some other values. Values most commonly used are:

; <code>comment</code>
: Used to note the purpose of the field.
; <code>label</code>
: The language key for this label. If the language key is not recognised then this value will be used instead (see the [[#chap08.xhtml#language-chapter|chapter on language]]).
; <code>displayParams</code>
: An array used to pass extra arguments for the field display. For the options and how they are used you can have a look into the appropriate field type in <code>include/SugarFields/Fields</code> or <code>custom/include/SugarFields/Fields</code>. An example is setting the size of a textarea:

<div class="code-block">

Example 6.4: DetailView metadata displayParams


-----

<div class="highlight">

<pre>1 'displayParams' =&gt; array(
2     'rows' =&gt; 2,
3     'cols' =&gt; 30,
4 ),</pre>

</div>

-----


</div>
; customCode
: Allows supplying custom smarty code to be used for the display. The code here can include any valid smarty code and this will also have access to the current fields in this view via <code>$fields</code>. An example of outputing the ID field would be <code>{$fields.id.value}</code>. Additionally the module labels and app labels can be accessed via <code>$MOD</code> and <code>$APP</code> respectively. Finally you can use <code>@@FIELD@@</code> to output the value of the field that would have been used. For example <code>{if $someCondition}@@FIELD@@{/if}</code> will conditionally show the field.

#### editviewdefs.php ####

<code>editviewdefs.php</code> provides information on the layout and fields of the edit view for this module. This file uses the same structure as detailviewdefs.php. Please see the information on detailviewdefs.php.

#### listviewdefs.php ####

The <code>listviewdefs.php</code> file for a module defines what fields the list view for that module will display. Let’s take a look at an example:

<div class="code-block">

Example 6.5: ListView metadata definition


-----

<div class="highlight">

<pre> 1 $listViewDefs ['AOR_Reports'] =
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
40 );</pre>

</div>

-----


</div>
To define the list view defs we simply add a key to the <code>$listViewDefs</code> array. In this case we add an entry for <code>AOR_Reports</code> This array contains an entry for each field that we wish to show in the list view and is keyed by the upper case name of the field. For example, the <code>REPORT_MODULE</code> key refers to the <code>report_module</code> field of AOR_Reports.

; type
: The type of the field. This can be used to override how a field is displayed.
; default
: Whether this field should be shown in the list view by default. If false then the field will appear in the available columns list in studio.
; studio
: Whether or not this field should be displayed in studio. This can be useful to ensure that a critical field is not removed.
; label
: The label to be used for this field. If this is not supplied then the default label for that field will be used.
; width
: The width of the field in the list view. Note that, although this is usually given as a percentage it is treated as a proportion. The example above has five columns with a width of <code>15%</code> but these will actually be <code>20%</code> since this is a ratio.

#### popupdefs.php ####

popupdefs.php provides information on the layout, fields and search options of the module popup that is usually used when selecting a related record.

Let’s look at the default popupdefs.php for the Accounts module:

<div class="code-block">

Example 6.6: PopupView metadata definition


-----

<div class="highlight">

<pre> 1 $popupMeta = array(
 2 	'moduleMain' =&gt; 'Case',
 3 	'varName' =&gt; 'CASE',
 4 	'className' =&gt; 'aCase',
 5 	'orderBy' =&gt; 'name',
 6 	'whereClauses' =&gt;
 7 		array('name' =&gt; 'cases.name',
 8 				'case_number' =&gt; 'cases.case_number',
 9 				'account_name' =&gt; 'accounts.name'),
10 	'listviewdefs' =&gt; array(
11 		'CASE_NUMBER' =&gt; array(
12 			'width' =&gt; '5',
13 			'label' =&gt; 'LBL_LIST_NUMBER',
14 	        'default' =&gt; true),
15 		'NAME' =&gt; array(
16 			'width' =&gt; '35',
17 			'label' =&gt; 'LBL_LIST_SUBJECT',
18 			'link' =&gt; true,
19 	        'default' =&gt; true),
20 		'ACCOUNT_NAME' =&gt; array(
21 			'width' =&gt; '25',
22 			'label' =&gt; 'LBL_LIST_ACCOUNT_NAME',
23 			'module' =&gt; 'Accounts',
24 			'id' =&gt; 'ACCOUNT_ID',
25 			'link' =&gt; true,
26 	        'default' =&gt; true,
27 	        'ACLTag' =&gt; 'ACCOUNT',
28 	        'related_fields' =&gt; array('account_id')),
29 		'PRIORITY' =&gt; array(
30 			'width' =&gt; '8',
31 			'label' =&gt; 'LBL_LIST_PRIORITY',
32 	        'default' =&gt; true),
33 		'STATUS' =&gt; array(
34 			'width' =&gt; '8',
35 			'label' =&gt; 'LBL_LIST_STATUS',
36 	        'default' =&gt; true),
37 	    'ASSIGNED_USER_NAME' =&gt; array(
38 	        'width' =&gt; '2',
39 	        'label' =&gt; 'LBL_LIST_ASSIGNED_USER',
40 	        'default' =&gt; true,
41 	       ),
42 		),
43 	'searchdefs'   =&gt; array(
44 	 	'case_number',
45 		'name',
46 		array(
47 			'name' =&gt; 'account_name',
48 			'displayParams' =&gt; array(
49 				'hideButtons'=&gt;'true',
50 				'size'=&gt;30,
51 				'class'=&gt;'sqsEnabled sqsNoAutofill'
52 			)
53 		),
54 		'priority',
55 		'status',
56 		array(
57 			'name' =&gt; 'assigned_user_id',
58 			'type' =&gt; 'enum',
59 			'label' =&gt; 'LBL_ASSIGNED_TO',
60 			'function' =&gt; array(
61 				'name' =&gt; 'get_user_array',
62 				'params' =&gt; array(false))
63 			),
64 	  )
65 );</pre>

</div>

-----


</div>
The popupdefs.php specifies a <code>$popupMeta</code> array with the following keys:

; <code>moduleMain</code>
: The module that will be displayed by this popup.
; <code>varName</code>
: The variable name used to store the search preferences etc. This will usually simply the upper case module name.
; <code>className</code>
: The class name of the SugarBean for this module. If this is not supplied then <code>moduleMain</code> will be used. This is only really required for classes where the class name and module name differ (such as Cases).
; <code>orderBy</code>
: The default field the list of records will be sorted by.
; <code>whereClauses</code>
: Legacy option. This is only used as a fallback when there are no searchdefs. Defines the names of fields to allow searching for and their database representation.
; <code>listviewdefs</code>
: The list of fields displayed in the popup list view. See <code>listviewdefs.php</code>.
; <code>searchdefs</code>
: An array of the fields that should be available for searching in the popup. See the individual search defs in the searchdefs.php section (for example the <code>basic_search</code> array).

#### quickcreatedefs.php ####

<code>quickcreatedefs.php</code> provides information on the layout and fields of the quick create view for this module (this is the view that appears when creating a record from a subpanel). This file uses the same structure as <code>detailviewdefs.php</code>. Please see the information on <code>detailviewdefs.php</code>.

#### searchdefs.php ####

The search defs of a module define how searching in that module looks and behaves.

Let’s look at an example.

<div class="code-block">

Example 6.7: Search View metadata definition


-----

<div class="highlight">

<pre>  1 $searchdefs ['Accounts'] = array (
  2 	'templateMeta' =&gt; array (
  3 		'maxColumns' =&gt; '3',
  4 		'maxColumnsBasic' =&gt; '4',
  5 		'widths' =&gt; array (
  6 			'label' =&gt; '10',
  7 			'field' =&gt; '30'
  8 		)
  9 	),
 10 	'layout' =&gt; array (
 11 		'basic_search' =&gt; array (
 12 			'name' =&gt; array (
 13 				'name' =&gt; 'name',
 14 				'default' =&gt; true,
 15 				'width' =&gt; '10%'
 16 			),
 17 			'current_user_only' =&gt; array (
 18 				'name' =&gt; 'current_user_only',
 19 				'label' =&gt; 'LBL_CURRENT_USER_FILTER',
 20 				'type' =&gt; 'bool',
 21 				'default' =&gt; true,
 22 				'width' =&gt; '10%'
 23 			)
 24 		)
 25 		,
 26 		'advanced_search' =&gt; array (
 27 			'name' =&gt; array (
 28 				'name' =&gt; 'name',
 29 				'default' =&gt; true,
 30 				'width' =&gt; '10%'
 31 			),
 32 			'website' =&gt; array (
 33 				'name' =&gt; 'website',
 34 				'default' =&gt; true,
 35 				'width' =&gt; '10%'
 36 			),
 37 			'phone' =&gt; array (
 38 				'name' =&gt; 'phone',
 39 				'label' =&gt; 'LBL_ANY_PHONE',
 40 				'type' =&gt; 'name',
 41 				'default' =&gt; true,
 42 				'width' =&gt; '10%'
 43 			),
 44 			'email' =&gt; array (
 45 				'name' =&gt; 'email',
 46 				'label' =&gt; 'LBL_ANY_EMAIL',
 47 				'type' =&gt; 'name',
 48 				'default' =&gt; true,
 49 				'width' =&gt; '10%'
 50 			),
 51 			'address_street' =&gt; array (
 52 				'name' =&gt; 'address_street',
 53 				'label' =&gt; 'LBL_ANY_ADDRESS',
 54 				'type' =&gt; 'name',
 55 				'default' =&gt; true,
 56 				'width' =&gt; '10%'
 57 			),
 58 			'address_city' =&gt; array (
 59 				'name' =&gt; 'address_city',
 60 				'label' =&gt; 'LBL_CITY',
 61 				'type' =&gt; 'name',
 62 				'default' =&gt; true,
 63 				'width' =&gt; '10%'
 64 			),
 65 			'address_state' =&gt; array (
 66 				'name' =&gt; 'address_state',
 67 				'label' =&gt; 'LBL_STATE',
 68 				'type' =&gt; 'name',
 69 				'default' =&gt; true,
 70 				'width' =&gt; '10%'
 71 			),
 72 			'address_postalcode' =&gt; array (
 73 				'name' =&gt; 'address_postalcode',
 74 				'label' =&gt; 'LBL_POSTAL_CODE',
 75 				'type' =&gt; 'name',
 76 				'default' =&gt; true,
 77 				'width' =&gt; '10%'
 78 			),
 79 			'billing_address_country' =&gt; array (
 80 				'name' =&gt; 'billing_address_country',
 81 				'label' =&gt; 'LBL_COUNTRY',
 82 				'type' =&gt; 'name',
 83 				'options' =&gt; 'countries_dom',
 84 				'default' =&gt; true,
 85 				'width' =&gt; '10%'
 86 			),
 87 			'account_type' =&gt; array (
 88 				'name' =&gt; 'account_type',
 89 				'default' =&gt; true,
 90 				'width' =&gt; '10%'
 91 			),
 92 			'industry' =&gt; array (
 93 				'name' =&gt; 'industry',
 94 				'default' =&gt; true,
 95 				'width' =&gt; '10%'
 96 			),
 97 			'assigned_user_id' =&gt; array (
 98 				'name' =&gt; 'assigned_user_id',
 99 				'type' =&gt; 'enum',
100 				'label' =&gt; 'LBL_ASSIGNED_TO',
101 				'function' =&gt; array (
102 					'name' =&gt; 'get_user_array',
103 					'params' =&gt; array (
104 							0 =&gt; false
105 					)
106 				),
107 				'default' =&gt; true,
108 				'width' =&gt; '10%'
109 			)
110 		)
111 	)
112 );</pre>

</div>

-----


</div>
Here we setup a new array for <code>Accounts</code> in the <code>$searchdefs</code> array. This has two keys:

####= templateMeta ####=

The <code>templateMeta</code> key controls the basic look of the search forms. Here we define some overall layout info such as the maximum columns (3) and the maximum number of columns for the basic search (4). Finally we set the widths for the search fields and their labels.

####= layout ####=

The <code>layout</code> key contains the layout definitions for the basic search and advanced search. This is simply a list of array definition of the fields. See the section on listviewdefs.php for a description of some of the options.

#### <code>subpaneldefs.php</code> ####

The subpaneldefs.php file provides definitions for the subpanels that appear in the detail view of a module. Let’s look at an example:

<div class="code-block">

Example 6.8: Subpanel metadata definition


-----

<div class="highlight">

<pre> 1 $layout_defs['AOS_Quotes'] = array (
 2 	'subpanel_setup' =&gt; array (
 3 		'aos_quotes_aos_contracts' =&gt; array (
 4 			'order' =&gt; 100,
 5 			'module' =&gt; 'AOS_Contracts',
 6 			'subpanel_name' =&gt; 'default',
 7 			'sort_order' =&gt; 'asc',
 8 			'sort_by' =&gt; 'id',
 9 			'title_key' =&gt; 'AOS_Contracts',
10 			'get_subpanel_data' =&gt; 'aos_quotes_aos_contracts',
11 			'top_buttons' =&gt; array (
12 				0 =&gt; array (
13 					'widget_class' =&gt; 'SubPanelTopCreateButton'
14 				),
15 				1 =&gt; array (
16 					'widget_class' =&gt; 'SubPanelTopSelectButton',
17 					'popup_module' =&gt; 'AOS_Contracts',
18 					'mode' =&gt; 'MultiSelect'
19 				)
20 			)
21 		),
22 		'aos_quotes_aos_invoices' =&gt; array (
23 			'order' =&gt; 100,
24 			'module' =&gt; 'AOS_Invoices',
25 			'subpanel_name' =&gt; 'default',
26 			'sort_order' =&gt; 'asc',
27 			'sort_by' =&gt; 'id',
28 			'title_key' =&gt; 'AOS_Invoices',
29 			'get_subpanel_data' =&gt; 'aos_quotes_aos_invoices',
30 			'top_buttons' =&gt; array (
31 				0 =&gt; array (
32 					'widget_class' =&gt; 'SubPanelTopCreateButton'
33 				),
34 				1 =&gt; array (
35 					'widget_class' =&gt; 'SubPanelTopSelectButton',
36 					'popup_module' =&gt; 'AOS_Invoices',
37 					'mode' =&gt; 'MultiSelect'
38 				)
39 			)
40 		),
41 		'aos_quotes_project' =&gt; array (
42 			'order' =&gt; 100,
43 			'module' =&gt; 'Project',
44 			'subpanel_name' =&gt; 'default',
45 			'sort_order' =&gt; 'asc',
46 			'sort_by' =&gt; 'id',
47 			'title_key' =&gt; 'Project',
48 			'get_subpanel_data' =&gt; 'aos_quotes_project',
49 			'top_buttons' =&gt; array (
50 				0 =&gt; array (
51 					'widget_class' =&gt; 'SubPanelTopCreateButton'
52 				),
53 				1 =&gt; array (
54 					'widget_class' =&gt; 'SubPanelTopSelectButton',
55 					'popup_module' =&gt; 'Accounts',
56 					'mode' =&gt; 'MultiSelect'
57 				)
58 			)
59 		)
60 	)
61 );</pre>

</div>

-----


</div>
In the example above we set up a definition for a module (in this case <code>AOS_Quotes</code>) in the <code>$layout_defs</code> array. This has a single key <code>subpanel_setup</code> which is an array of each of the subpanel definitions keyed by a name. This name should be something recognisable. In the case above it is the name of the link field displayed by the subpanel. The entry for each subpanel usually has the following defined:

; order
: A number used for sorting the subpanels. The values themselves are arbitrary and are only used relative to other subpanels.
; module
: The module which will be displayed by this subpanel. For example the <code>aos_quotes_project</code> def in the example above will display a list of <code>Project</code> records.
; subpanel_name
: The subpanel from the displayed module which will be used. See the subpanels section of this chapter.
; sort_by
: The field to sort the records on.
; sort_order
: The order in which to sort the <code>sort_by</code> field. <code>asc</code> for ascending <code>desc</code> for descending.
; title_key
: The language key to be used for the label of this subpanel.
; get_subpanel_data
: Used to specify where to retrieve the subpanel records. Usually this is just a link name for the current module. In this case the related records will be displayed in the subpanel. However, for more complex links, it is possible to specify a function to call. When specifying a function you should ensure that the <code>get_subpanel_data</code> entry is in the form <code>function:theFunctionName</code>. Additionally you can specify the location of the function and any additional parameters that are needed by using the <code>function_parameters</code> key. An example of a subpanel which uses a function can be found in [[#chap19.xhtml#appendix-a|Appendix A]].
; function_parameters
: Specifies the parameters for a subpanel which gets it’s information from a function (see<br />
<code>get_subpanel_data</code>). This is an array which allows specifying where the function is by using the <code>import_function_file</code> key (if this is absent but <code>get_subpanel_data</code> defines a function then the function will be called on the bean for the parent of the subpanel). Additionally this array will be passed as an argument to the function defined in <code>get_subpanel_data</code> which allows passing in arguments to the function.
; generate_select
: For function subpanels (see <code>get_subpanel_data</code>) whether or not the function will return an array representing the query to be used (for <code>generate_select = true</code>) or whether it will simply return the query to be used as a string.
; get_distinct_data
: Whether or not to only return distinct rows. Relationships do not allow linking two records more than once therefore this only really applies if the subpanel source is a function. See<br />
<code>get_subpanel_data</code> for information on function subpanel sources.
; top_buttons
: Allows defining the buttons to appear on the subpanel. This is simply an array of the button definitions. These definitions have, at least, the <code>widget_class</code> defined which decides the button class to use in <code>include/generic/SugarWidgets</code>. Depending on the button this array may also be used to pass in extra arguments to the widget class.

#### subpanels ####

Inside the metadata folder is the <code>subpanels</code> folder. This allows creating different subpanel layouts for different parent modules. For example, the Contacts module will display differently in the subpanel on an account than it will in the subpanel of a case. The files inside the <code>subpanels</code> folder can be named anything. All that matters is that it can be referenced in the <code>subpanel_name</code> of the <code>subpaneldefs.php</code> of the parent module. The usual subpanel file is simply called <code>default.php</code>. Let’s look at the <code>modules/Accounts/metadata/subpanels/default.php</code> file:

<div class="code-block">

Example 6.8: Module Subpanels definition


-----

<div class="highlight">

<pre> 1 $subpanel_layout = array(
 2 	'top_buttons' =&gt; array(
 3 		array(
 4 			'widget_class' =&gt; 'SubPanelTopCreateButton'
 5 		),
 6 		array(
 7 			'widget_class' =&gt; 'SubPanelTopSelectButton', 
 8 			'popup_module' =&gt; 'Accounts'
 9 		),
10 	),
11 	'where' =&gt; '',
12 	'list_fields' =&gt; array (
13 	  'name' =&gt;
14 	  array (
15 	   'vname' =&gt; 'LBL_LIST_ACCOUNT_NAME',
16 	   'widget_class' =&gt; 'SubPanelDetailViewLink',
17 	   'width' =&gt; '45%',
18 	   'default' =&gt; true,
19 	  ),
20 	  'billing_address_city' =&gt;
21 	  array (
22     	'vname' =&gt; 'LBL_LIST_CITY',
23     	'width' =&gt; '20%',
24     	'default' =&gt; true,
25 	  ),
26 	  'billing_address_country' =&gt;
27 	  array (
28 	  	'type' =&gt; 'varchar',
29     	'vname' =&gt; 'LBL_BILLING_ADDRESS_COUNTRY',
30     	'width' =&gt; '7%',
31     	'default' =&gt; true,
32 	  ),
33 	  'phone_office' =&gt;
34 	  array (
35 	  	'vname' =&gt; 'LBL_LIST_PHONE',
36 	  	'width' =&gt; '20%',
37 	  	'default' =&gt; true,
38 	  ),
39 	  'edit_button' =&gt;
40 	  array (
41 	  	'vname' =&gt; 'LBL_EDIT_BUTTON',
42 	  	'widget_class' =&gt; 'SubPanelEditButton',
43 	  	'width' =&gt; '4%',
44 	  	'default' =&gt; true,
45 	  ),
46 	  'remove_button' =&gt;
47 	  array (
48 	    'vname' =&gt; 'LBL_REMOVE',
49 	    'widget_class' =&gt; 'SubPanelRemoveButtonAccount',
50 	    'width' =&gt; '4%',
51 	    'default' =&gt; true,
52 	  ),
53    )
54 );</pre>

</div>

-----


</div>
There are three keys in the <code>$subpanel_layout</code> variable for this subpanel. These are:

; <code>top_buttons</code>
: Defines the buttons that will appear at the top of the subpanel. See the <code>top_buttons</code> key in <code>subpaneldefs.php</code>.
; <code>where</code>
: Allows the addition of conditions to the <code>where</code> clause. For example this could be used to exclude Cases that are closed (<code>cases.state != &quot;Closed&quot;</code>) or only include Accounts of a specific industry (<code>accounts.industry = &quot;Media&quot;</code>). Note that in these examples we specify the table to remove any ambiguity in the query.
; <code>list_fields</code>
: Defines the list of fields to be displayed in this subpanel. See the section on <code>listviewdefs.php</code> for more information.

#### studio.php ####

studio.php is the simplest file in metadata and it’s existence is simply used to confirm if a module should be shown in studio for user tweaking. Note that, unlike other metadata files, the file in <code>modules/&lt;TheModule&gt;/metadata/studio.php</code> will be the only one checked. A file in <code>custom/modules/&lt;TheModule&gt;/metadata/studio.php</code> will have no effect.


</div>
