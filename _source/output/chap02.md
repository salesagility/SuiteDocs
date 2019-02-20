---
layout: page
title: "Chapter 02"
---
<span id="chap01.xhtml"></span>

<div>

## <span class="section-number">2. </span>SuiteCRM Directory Structure ##

; <code>cache</code>
: Contains cache files used by SuiteCRM including compiled smarty templates, grouped vardefs, minified and grouped JavaScript. Some modules and custom modules may also store (temporary) module specific info here.
; <code>custom</code>
: Contains user and developer customisations to SuiteCRM. Also contains some SuiteCRM code to maintain compatibility with SugarCRM. However this is likely to change in the future.
; <code>data</code>
: Stores the classes and files used to deal with SugarBeans and their relationships.
; <code>examples</code>
: Contains a few basic examples of lead capture and API usage. However these are very outdated.
; <code>include</code>
: Contains the bulk of non module and non data SuiteCRM code.
; <code>install</code>
: Code used by the SuiteCRM installer.
; <code>jssource</code>
: The <code>jssource</code> folder contains the unminified source of some of the JavaScript files used within SuiteCRM.
; <code>metadata</code>
: Stores relationship metadata for the various stock SuiteCRM modules. This should not be confused with module metadata which contains information on view, dashlet and search definitions.
; <code>mobile</code>
: Stores code for the [QuickCRM](http://www.quickcrm.fr) mobile app.
; <code>ModuleInstall</code>
: Code for the module installer.
; <code>modules</code>
: Contains the code for any stock or custom SuiteCRM modules.
; <code>service</code>
: Code for the SuiteCRM Soap and REST APIs.
; <code>themes</code>
: Code, data and images for the bundled SuiteCRM theme.
; <code>upload</code>
: The <code>upload</code> folder contains documents that have been uploaded to SuiteCRM. The names of the files comes from the ID of the matching Document Revision/Note. <code>upload</code>/<code>upgrades</code> will also contain various upgrade files and the packages of installed modules.
;  <code>log4php</code>, <code>soap</code>, <code>XTemplate</code>, <code>Zend</code> 
: Source code for various libraries used by SuiteCRM some of which are deprecated.


</div>
