---
layout: page
title: "Chapter 14"
---
<span id="chap13.xhtml"></span>

<div>

## <span class="section-number">14. </span>Extension Framework ##

### Introduction ###

The extension framework provides a means to modify various application data inside SuiteCRM. For example it provides a way to add or modify vardefs, scheduled tasks, language strings and more. In general a folder is provided in <code>custom/Extension</code> (the exact path depends on the extension). This folder is then scanned for files which will be consolidated into a single ext file which SuiteCRM will then read and use. In this way it is possible for developers to add a new file to affect the behaviour of SuiteCRM rather than altering existing files. This makes the changes more modular and allows the easy addition or removal of changes. Additionally, because these files are all consolidated it means that there is no affect on performance of checking a (possibly large) number of files. This is only done when performing a repair and rebuild in the admin menu.

### Standard Extensions ###

List of standard SuiteCRM extensions

{|
! Extension Directory
! Compiled file
! Module
! Description
|-
| ActionViewMap
| action_view_map.ext.php
|  
| Used to map actions for a module to a specified view.
|-
| ActionFileMap
| action_file_map.ext.php
|  
| Used to map actions for a module to a specified file.
|-
| ActionReMap
| action_remap.ext.php
|  
| Used to map actions for a module to existing actions.
|-
| Administration
| administration.ext.php
| Administration
| Used to add new sections to the administration panel.
|-
| EntryPointRegistry
| entry_point_registry.ext.php
| application
| Used to add new entry points to SuiteCRM. See the chapter on [Points](Entry)(#chap07.xhtml#entry-point-chapter).
|-
| Extensions
| extensions.ext.php
| application
| Used to add new extension types.
|-
| FileAccessControlMap
| file_access_control_map.ext.php
|  
| Used to add, update or delete entries in the access control lists for files.
|-
| Language
| N/A<sup>[1](#chap13.xhtml#fn-langNote)</sup>
|  
| Used to add, update or delete language strings for both modules and app strings. See the chapter on [Strings](Language)(#chap08.xhtml#language-chapter).
|-
| Layoutdefs
| layoutdefs.ext.php
|  
| Used to add, update or delete subpanel definitions for a module.
|-
| GlobalLinks
| links.ext.php
| application
| Used to add, update or delete global links (the list of links that appear in the top right of the SuiteCRM UI).
|-
| LogicHooks
| logichooks.ext.php
|  
| Used to add, update or delete logic hooks. See the chapter on [Hooks](Logic)(#chap11.xhtml#logic-hooks-chapter).
|-
| Include
| modules.ext.php
| application
| Used to register new beans and modules.
|-
| Menus
| menu.ext.php
|  
| Used to add, update or delete the menu links for each module.
|-
| ScheduledTasks
| scheduledtasks.ext.php
| Schedulers
| Used to add new scheduled tasks. See the chapter on [Tasks](Scheduled)(#chap12.xhtml#scheduled-tasks-chapter).
|-
| UserPage
| userpage.ext.php
| Users
| Unused
|-
| Utils
| custom_utils.ext.php
| application
| Used to add new utility methods.
|-
| Vardefs
| vardefs.ext.php
|  
| Used to add, update or delete vardefs for a module. See the section on [Vardefs](#chap03.xhtml#vardefs-chapter).
|-
| JSGroupings
| jsgroups.ext.php
|  
| Used to add, update or delete JavaScript groupings.
|-
| Actions
| actions.ext.php
| AOW_Actions
| Used to add new WorkFlow actions.
|}

### Custom Extensions ###

Interestingly the extension framework can be used to add new extensions. This allows you to create customisations that are easily customised by others (in a similar manner to, for example, how vardefs can be added - see the chapter on [Vardefs](#chap03.xhtml#vardefs-chapter)).

To create a custom extension you simply add a new file in<br />
<code>custom/Extension/application/Ext/Extensions</code>. This can be given a name of your choosing. Our example will use<br />
<code>custom/Extension/application/Ext/Extensions/SportsList.php</code> and will look like:

<div class="code-block">

Example 14.1: Adding an entry point entry


-----

<div class="highlight">

<pre>1 &lt;?php
2 $extensions[&quot;sports_list&quot;] =  array(
3                 &quot;section&quot; =&gt; &quot;sports_list&quot;,
4                 &quot;extdir&quot; =&gt; &quot;SportsList&quot;,
5                 &quot;file&quot; =&gt; 'sportslist.ext.php',
6                 &quot;module&quot; =&gt; &quot;&quot;);</pre>

</div>

-----


</div>
Now when a Quick Repair and rebuild is run any files in<br />
<code>custom/Extension/application/Ext/SportsList/</code> will be consolidated into<br />
<code>custom/application/Ext/SportsList/sportslist.ext.php</code>. On it’s own this file will not do anything but you are now able to write custom code that checks the consolidated file rather than having to worry about searching for customisations.

<div class="footnotes">

<ol>
