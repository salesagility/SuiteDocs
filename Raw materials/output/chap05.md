---
layout: page
title: "Chapter 05"
---
<span id="chap04.xhtml"></span>

<div>

## <span class="section-number">5. </span>Views ##

SuiteCRM follows the MVC (Model-View-Controller) pattern and as such has the concept of views. Views are responsible for gathering and displaying data . There are a number of default views in SuiteCRM. These include

; ListView
: Displays a list of records and provides links to the EditViews and DetailViews of those records. The ListView also allows some operations such as deleting and mass updating records. This is (usually) the default view for a module.
; DetailView
: Displays the details of a single record and also displays subpanels of related records.
; EditView
: The EditView allows editing the various fields of a record and provides validation on these values.

### Location ###

Views can be found in <code>modules/&lt;TheModule&gt;/views/</code> or, for custom views,<br />
<code>custom/modules/&lt;TheModule&gt;/views/</code>, and are named in the following format: <code>view.&lt;viewname&gt;.php</code>. For example, the Accounts DetailView can be found in <code>modules/Accounts/views/view.detail.php</code> with a customised version in <code>custom/modules/Accounts/views/view.detail.php</code>. The custom version is used if it exists. If it doesn’t then the module version is used. Finally, if neither of these exist then the SuiteCRM default is used in <code>include/MVC/View/views/</code>.

### Customising ###

In order to customise a View we first need to create the appropriate view file. This will vary depending on the module we wish to target.

#### Custom module ####

In this case we can place the file directly into our module. Create a new file (if it doesn’t exist) at <code>modules/&lt;TheModule&gt;/views/view.&lt;viewname&gt;.php</code>. The contents will look similar to:

<div class="code-block">

Example 5.1: View for a custom module


-----

<div class="highlight">

<pre>1 &lt;?php
2 
3 require_once 'include/MVC/View/views/view.&lt;viewname&gt;.php';
4 
5 if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');
6 class &lt;TheModule&gt;View&lt;ViewName&gt; extends View&lt;ViewName&gt;
7 {
8 
9 }</pre>

</div>

-----


</div>
A more concrete example would be for the detail view for a custom module called ABC_Vehicles:

<div class="code-block">

Example 5.2: Detail view for a custom module, ABC_Vehicles


-----

<div class="highlight">

<pre>1 &lt;?php
2 
3 require_once 'include/MVC/View/views/view.detail.php';
4 
5 if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');
6 class ABC_VehiclesViewDetail extends ViewDetail
7 {
8 
9 }</pre>

</div>

-----


</div>
#### Preexisting modules ####

For preexisting modules you will want to add the view to<br />
<code>custom/modules/&lt;TheModule&gt;/views/view.&lt;viewname&gt;.php</code>.

The contents of this file will vary depending on whether you wish to extend the existing view (if it exists) or create your own version completely. It is usually best to extend the existing view, since this will retain important logic. Note the naming convention here. We name the class<br />
<code>Custom&lt;TheModule&gt;View&lt;ViewName&gt;</code> (for example <code>CustomAccountsViewDetail</code>).

Here we don’t extend the existing view or no such view exists:

<div class="code-block">

Example 5.3: Custom view for an existing module


-----

<div class="highlight">

<pre>1 &lt;?php
2 if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');
3 
4 require_once 'include/MVC/View/views/view.&lt;viewname&gt;.php';
5 
6 class Custom&lt;TheModule&gt;View&lt;ViewName&gt; extends ViewDetail
7 {
8 
9 }</pre>

</div>

-----


</div>
Otherwise we extend the existing view. Note that we are requiring the existing view:

<div class="code-block">

Example 5.4: Overriding a view for an existing module


-----

<div class="highlight">

<pre>1 &lt;?php
2 if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');
3 
4 require_once 'modules/&lt;TheModule&gt;/views/view.&lt;viewname&gt;.php';
5 
6 class Custom&lt;TheModule&gt;View&lt;ViewName&gt; extends &lt;TheModule&gt;View&lt;ViewName&gt;
7 {
8 
9 }</pre>

</div>

-----


</div>
For example, overriding the List View of Accounts:

<div class="code-block">

Example 5.5: Overriding the Accounts List View


-----

<div class="highlight">

<pre>1 &lt;?php
2 if(!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');
3 
4 require_once 'modules/Accounts/views/view.list.php';
5 
6 class CustomAccountsViewList extends AccountsViewList
7 {
8 
9 }</pre>

</div>

-----


</div>
#### Making changes ####

Now that we have a custom view what can we actually do? The views have various methods which we can now override to change/add behaviour. The most common ones to override are:

; preDisplay
: Explicitly intended to allow logic to be called before display() is called. This can be used to alter arguments to the list view or to output anything to appear before the main display code (such as, for example, adding JavaScript).
; display
: Does the actual work of displaying the view. Can be overridden to alter this behaviour or to output anything after the main display. You usually want to call parent::display(); to ensure that the display code is run (unless, of course, you are adding your own display logic).


</div>
