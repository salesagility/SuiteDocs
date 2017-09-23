---
layout: page
title: "Chapter 21"
---
<span id="chap19.xhtml"></span>

<div>

## <span class="section-number">20. </span>Appendix A - Code Examples ##

### Metadata ###

This is an example of setting up a function subpanel (see the [Metadata](#chap05.xhtml#metadata-chapter) chapter for more information).

In this example the cases module has a custom field <code>incident_code_c</code> which is used to track cases with the same root cause. We’ll add a subpanel to show all cases that have the same <code>incident_code_c</code>.

Initially we add to the <code>subpanel_setup</code> section of Cases by creating the following file in <code>custom/Extension/modules/Cases/Ext/Layoutdefs/IncidentLayoutdefs.php</code>

<div class="code-block">

Example A.1: <code>IncidentLayoutdefs.php</code>


-----

<div class="highlight">

<pre> 1 &lt;?php
 2 $layout_defs[&quot;Cases&quot;][&quot;subpanel_setup&quot;]['incident_cases'] = array(
 3   'module' =&gt; 'Cases',
 4   'title_key' =&gt; 'LBL_INCIDENT_CASES',
 5   'subpanel_name' =&gt; 'default',
 6   'get_subpanel_data' =&gt; 'function:get_cases_by_incident',
 7   'function_parameters' =&gt; 
 8           array('import_function_file' =&gt; 'custom/modules/Cases/IncidentUtils.ph\
 9 p',),
10 );</pre>

</div>

-----


</div>
Next we create the file which will define our <code>get_cases_by_incident</code> function <code>custom/modules/Cases/IncidentUtils.php</code>.

<div class="code-block">

Example A.2: <code>IncidentUtils.php</code>


-----

<div class="highlight">

<pre> 1 &lt;?php
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
17 }</pre>

</div>

-----


</div>
### Module Installer ###

The following is a basic example manifest file. See the [Installer](Module)(#chap14.xhtml#module-installer-chapter) chapter.

<div class="code-block">

Example A.3: Example manifest file


-----

<div class="highlight">

<pre>  1 $manifest = array(
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
100 );</pre>

</div>

-----


</div>

</div>
