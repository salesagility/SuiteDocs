---
permalink: "/chap09.html"
layout: page
title: "Chapter 09"
---
<span id="chap08.xhtml"></span>

<div>

## <span class="section-number">9. </span>Language Strings ##

Language strings provide an element of internationalisation to SuiteCRM. It allows specifying different strings to be used in different languages making it much easier to provide translations for modules and customisations. Even if you are only targeting a single language it is still worth using the language string functionality in SuiteCRM because it allows the simple changing of strings within SuiteCRM and it also allows users to customise the labels used in your customisations. There are three main types of language strings that we will cover here.

At the core, the language strings are a key value store. The keys are used throughout SuiteCRM and the values are loaded based on the current language.

Languages are handled in SuiteCRM by prefixing the file name with the IETF language code for the language that this file contains. Here are some examples of different language file names:

<div class="code-block">

Example 9.1: Example language file names


-----

<div class="highlight">

<pre># Core Accounts language file for en_us (United States English)
modules/Accounts/language/en_us.lang.php

# Core Cases language file for es_es (Spanish as spoken in Spain)
modules/Cases/language/es_es.lang.php

# Custom language file for de_de (German)
custom/Extension/application/Ext/Language/de_de.SomeCustomPackage.php</pre>

</div>

-----


</div>
SuiteCRM will choose the language prefix to be used based on the language the user selected when logging in or the default language if none was selected. Generally when a language file is loaded the default language files and the <code>en_us</code> files will also be loaded. These files are then merged. This ensures that there will still be a definition if there are language keys in either <code>en_us</code> or the default language that don’t have definitions in the current language. In essence the language “falls back” to the default language and <code>en_us</code> if there are missing keys.

### Module Strings ###

#### Use ####

Module strings are strings associated with a particular module. These are usually, for example, field labels and panel name labels, but they may be used for anything that is specific to a single module.

#### Definition location ####

Module strings are defined in the <code>$mod_strings</code> array. This is initially defined in<br />
<code>modules/&lt;TheModule&gt;/language/&lt;LanguageTag&gt;.lang.php</code>, for example<br />
<code>modules/Accounts/language/en_us.lang.php</code>.

#### Customisation location ####

Customisations can be made to the module strings by adding a new file in<br />
<code>custom/Extension/modules/&lt;TheModule&gt;/Ext/Language/&lt;LanguageTag&gt;.&lt;Name&gt;.php</code> (<code>&lt;Name&gt;</code> in this case should be used to give it a descriptive name). An example is <code>custom/Extension/modules/Accounts/Ext/Language/en_us.MyLanguageFile.php</code>. See the Extensions section for more information on the Extensions folder.

### Application Strings ###

#### Use ####

Application strings are used for language strings and labels that are not specific to a single module. Examples of these may include labels that will appear in the headers or footers, labels that appear on search buttons throughout SuiteCRM or labels for pagination controls.

#### Definition location ####

The application strings are defined in the <code>$app_strings</code> array. This is initially defined in<br />
<code>include/language/&lt;LanguageTag&gt;.lang.php</code>.

#### Customisation location ####

Customisations can be made to the application strings in two ways. Firstly you can edit the file<br />
<code>custom/include/language/&lt;LanguageTag&gt;.lang.php</code>. However to promote modularity it is recommended that you add a new file in the location<br />
<code>custom/Extension/application/Ext/Language/&lt;LanguageTag&gt;.&lt;Name&gt;.php</code>. For example<br />
<code>custom/Extension/application/Ext/Language/es_es.MyAppLanguageFile.php</code>. <code>&lt;Name&gt;</code> should be used to give the file a descriptive name. See the Extensions section for more information on the Extensions folder.

### Application List Strings ###

#### Use ####

Application list strings are used to store the various dropdowns and lists used in SuiteCRM. Most of these are used as options for the various enum fields in SuiteCRM e.g the account type or the opportunity sales stage.

#### Definition location ####

The application list strings are defined in the <code>$app_list_strings</code> array. Similar to the <code>$app_strings</code> array this is initially defined in <code>include/language/en_us.lang.php</code>.

#### Customisation location ####

Customisations can be made to the application list strings in two ways. Firstly you can edit the file<br />
<code>custom/include/language/&lt;LanguageTag&gt;.lang.php</code>. However to promote modularity it is recommended that you add a new file in the location<br />
<code>custom/Extension/application/Ext/Language/&lt;LanguageTag&gt;.&lt;Name&gt;.php</code> (<code>&lt;Name&gt;</code> should be used to give the file a descriptive name). For example<br />
<code>custom/Extension/application/Ext/Language/es_es.MyAppListLanguageFile.php</code>. See the Extensions section for more information on the Extensions folder.

### Why and when to customise ###

Generally language strings should be changed from within SuiteCRM using the studio tool. However there are times when it can be simpler to add or modify language strings as described in the previous section. If you are importing a large number of language strings or dropdown options it can be simpler to create a new file to add these values. Similarly if you are adding entirely new functionality, it is usually best to simply add these language strings as new values.

### Usage ###

Language strings are used automatically throughout SuiteCRM. For example in metadata you can specify the language strings to display for fields. However in some cases you will want to access and use the language strings in custom code. There are several ways to do this.

#### Globals ####

The <code>$mod_strings</code>, <code>$app_strings</code> and <code>$app_list_strings</code> variables are all global and can be accessed as such. <code>$app_strings</code> and <code>$app_list_strings</code> will always be available. However <code>$mod_strings</code> will only contain the strings for the current module (see the next section for other ways of accessing <code>$mod_strings</code>).

<div class="code-block">

Example 9.2: Accessing language strings globally


-----

<div class="highlight">

<pre> 1 function someFunction(){
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
22 }</pre>

</div>

-----


</div>
#### Translate ####

As an alternative to using globals or, if you are in a different module than the language string you wish to retrieve you can use the <code>translate</code> method.

<div class="code-block">

Example 9.3: <code>translate</code> method signature


-----

<div class="highlight">

<pre>1 translate(
2         $string,
3         $mod='',
4         $selectedValue='')</pre>

</div>

-----


</div>
; $string
: The language string to be translated.
; $mod
: The module this string should come from. Defaults to the current module if empty.
; $selectedValue
: For dropdown strings. This will return the label for the key <code>$selectedValue</code>

Here is an example of the above in action. Note that we do not have to worry about whether the label is a Module string, an Application string or an Application list string, as all of these will be checked (in that order - the first matching value will be returned).

<div class="code-block">

Example 9.4: Example <code>translate</code> method calls


-----

<div class="highlight">

<pre> 1 function someFunction(){
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
21 }</pre>

</div>

-----


</div>
#### JavaScript ####

Finally, you may be using JavaScript (for example in a view), and wish to display a language string. For this you can use the <code>SUGAR.language.get</code> method, which is similar to the <code>translate</code> method in example 9.3.

<div class="code-block">

Example 9.5: <code>SUGAR.language.get</code> method signature


-----

<div class="highlight">

<pre>1 SUGAR.language.get(
2               module,
3               str
4 );</pre>

</div>

-----


</div>
; module
: The module a language string will be returned for. You should supply <code>app_strings</code> or<br />
<code>app_list_strings</code> if the label you wish to retrieve is not a module string.
; str
: The key you want to retrieve a label for.

<div class="code-block">

Example 9.6: Example <code>SUGAR.language.get</code> method calls


-----

<div class="highlight">

<pre> 1 function someFunction(){
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
23 }</pre>

</div>

-----


</div>

</div>
