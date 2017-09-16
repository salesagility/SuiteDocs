---
permalink: "/chap00.html"
layout: page
title: "Chapter 00"
---
<span id="title_page.xhtml"></span>

<div id="title_page.xhtml#cover-image">

[[File:images/title_page.jpg|SuiteCRM for Developers]]

</div>
<span id="verso_page.xhtml"></span>

## SuiteCRM for Developers ##

### Getting started with developing for SuiteCRM ###

 

#### Jim Mackin ####

 

This book is for sale at http://leanpub.com/suitecrmfordevelopers

This version was published on 2015-05-22

[[File:images/leanpub-logo.png|publisher's logo]]

*   *   *   *   *

This is a [http://leanpub.com Leanpub] book. Leanpub empowers authors and publishers with the Lean Publishing process. [http://leanpub.com/manifesto Lean Publishing] is the act of publishing an in-progress ebook using lightweight tools and many iterations to get reader feedback, pivot until you have the right book and build traction once you do.

*   *   *   *   *



<div>

© 2015 Jim Mackin

</div>
<span id="toc.xhtml"></span>

<div>

## Table of Contents ##

* [[#chap00.xhtml#leanpub-auto-introduction|<span class="section-number">1. </span>Introduction]]
** [[#chap00.xhtml#leanpub-auto-what-is-suitecrm|What is SuiteCRM]]
** [[#chap00.xhtml#leanpub-auto-this-book|This book]]
** [[#chap00.xhtml#leanpub-auto-reading-this-book|Reading this book]]
** [[#chap00.xhtml#leanpub-auto-setting-up-suitecrm|Setting up SuiteCRM]]
** [[#chap00.xhtml#leanpub-auto-initial-tweaks|Initial Tweaks]]
* [[#chap01.xhtml#leanpub-auto-suitecrm-directory-structure|<span class="section-number">2. </span>SuiteCRM Directory Structure]]
* [[#chap02.xhtml#working-with-beans-chapter|<span class="section-number">3. </span>Working with Beans]]
** [[#chap02.xhtml#leanpub-auto-beanfactory|BeanFactory]]
** [[#chap02.xhtml#leanpub-auto-sugarbean|SugarBean]]
** [[#chap02.xhtml#leanpub-auto-searching-for-beans|Searching for beans]]
** [[#chap02.xhtml#leanpub-auto-accessing-fields|Accessing fields]]
** [[#chap02.xhtml#leanpub-auto-related-beans|Related beans]]
* [[#chap03.xhtml#vardefs-chapter|<span class="section-number">4. </span>Vardefs]]
** [[#chap03.xhtml#leanpub-auto-what-are-vardefs|What are Vardefs]]
** [[#chap03.xhtml#leanpub-auto-defining-vardefs|Defining Vardefs]]
* [[#chap04.xhtml#leanpub-auto-views|<span class="section-number">5. </span>Views]]
** [[#chap04.xhtml#leanpub-auto-location|Location]]
** [[#chap04.xhtml#leanpub-auto-customising|Customising]]
* [[#chap05.xhtml#metadata-chapter|<span class="section-number">6. </span>Metadata]]
** [[#chap05.xhtml#leanpub-auto-intro|Intro]]
** [[#chap05.xhtml#leanpub-auto-location-1|Location]]
** [[#chap05.xhtml#leanpub-auto-customising-1|Customising]]
** [[#chap05.xhtml#leanpub-auto-different-metadata|Different metadata]]
* [[#chap06.xhtml#leanpub-auto-controllers|<span class="section-number">7. </span>Controllers]]
** [[#chap06.xhtml#leanpub-auto-customising-controllers|Customising controllers]]
* [[#chap07.xhtml#entry-point-chapter|<span class="section-number">8. </span>Entry Points]]
** [[#chap07.xhtml#leanpub-auto-creating-an-entry-point|Creating an entry point]]
* [[#chap08.xhtml#language-chapter|<span class="section-number">9. </span>Language Strings]]
** [[#chap08.xhtml#leanpub-auto-module-strings|Module Strings]]
** [[#chap08.xhtml#leanpub-auto-application-strings|Application Strings]]
** [[#chap08.xhtml#leanpub-auto-application-list-strings|Application List Strings]]
** [[#chap08.xhtml#leanpub-auto-why-and-when-to-customise|Why and when to customise]]
** [[#chap08.xhtml#leanpub-auto-usage|Usage]]
* [[#chap09.xhtml#config-chapter|<span class="section-number">10. </span>Config]]
** [[#chap09.xhtml#leanpub-auto-the-config-files|The config files]]
** [[#chap09.xhtml#leanpub-auto-using-config-options|Using config options]]
* [[#chap10.xhtml#logging-chapter|<span class="section-number">11. </span>Logging]]
** [[#chap10.xhtml#leanpub-auto-logging-messages|Logging messages]]
** [[#chap10.xhtml#leanpub-auto-logging-output|Logging output]]
** [[#chap10.xhtml#leanpub-auto-log-levels|Log levels]]
* [[#chap11.xhtml#logic-hooks-chapter|<span class="section-number">12. </span>Logic Hooks]]
** [[#chap11.xhtml#leanpub-auto-intro-1|Intro]]
** [[#chap11.xhtml#leanpub-auto-types|Types]]
** [[#chap11.xhtml#leanpub-auto-application-hooks|Application Hooks]]
** [[#chap11.xhtml#leanpub-auto-user-hooks|User Hooks]]
** [[#chap11.xhtml#leanpub-auto-module-hooks|Module Hooks]]
** [[#chap11.xhtml#leanpub-auto-job-queue-hooks|Job Queue Hooks]]
** [[#chap11.xhtml#leanpub-auto-implementing|Implementing]]
** [[#chap11.xhtml#leanpub-auto-tips|Tips]]
* [[#chap12.xhtml#scheduled-tasks-chapter|<span class="section-number">13. </span>Scheduled Tasks]]
** [[#chap12.xhtml#leanpub-auto-intro-2|Intro]]
** [[#chap12.xhtml#leanpub-auto-scheduler|Scheduler]]
** [[#chap12.xhtml#leanpub-auto-job-queue|Job Queue]]
** [[#chap12.xhtml#leanpub-auto-debugging|Debugging]]
* [[#chap13.xhtml#extensions-chapter|<span class="section-number">14. </span>Extension Framework]]
** [[#chap13.xhtml#leanpub-auto-introduction-1|Introduction]]
** [[#chap13.xhtml#leanpub-auto-standard-extensions|Standard Extensions]]
** [[#chap13.xhtml#leanpub-auto-custom-extensions|Custom Extensions]]
* [[#chap14.xhtml#module-installer-chapter|<span class="section-number">15. </span>Module Installer]]
** [[#chap14.xhtml#leanpub-auto-manifestphp|manifest.php]]
** [[#chap14.xhtml#leanpub-auto-types-1|Types]]
* [[#chap15.xhtml#leanpub-auto-api|<span class="section-number">16. </span>API]]
** [[#chap15.xhtml#leanpub-auto-using-the-api|Using the API]]
** [[#chap15.xhtml#leanpub-auto-adding-custom-api-methods|Adding custom API methods]]
* [[#chap16.xhtml#leanpub-auto-best-practices|<span class="section-number">17. </span>Best Practices]]
** [[#chap16.xhtml#leanpub-auto-development-instances|Development instances]]
** [[#chap16.xhtml#leanpub-auto-version-control|Version control]]
** [[#chap16.xhtml#leanpub-auto-backup|Backup]]
** [[#chap16.xhtml#leanpub-auto-be-upgrade-safe|Be upgrade safe]]
** [[#chap16.xhtml#leanpub-auto-use-appropriate-log-levels|Use appropriate log levels]]
** [[#chap16.xhtml#leanpub-auto-long-running-logic-hooks|Long running logic hooks]]
** [[#chap16.xhtml#leanpub-auto-minimise-sql|Minimise SQL]]
** [[#chap16.xhtml#leanpub-auto-sql-use|SQL Use]]
** [[#chap16.xhtml#leanpub-auto-entry-check|Entry check]]
** [[#chap16.xhtml#leanpub-auto-redirect-after-post|Redirect after post]]
* [[#chap17.xhtml#leanpub-auto-performance-tweaks|<span class="section-number">18. </span>Performance Tweaks]]
** [[#chap17.xhtml#leanpub-auto-server|Server]]
** [[#chap17.xhtml#leanpub-auto-indexes|Indexes]]
** [[#chap17.xhtml#leanpub-auto-config-changes|Config Changes]]
* [[#chap18.xhtml#leanpub-auto-further-resources|<span class="section-number">19. </span>Further Resources]]
** [[#chap18.xhtml#leanpub-auto-suitecrm-website|SuiteCRM Website]]
** [[#chap18.xhtml#leanpub-auto-external-suitecrm-resources|External SuiteCRM Resources]]
** [[#chap18.xhtml#leanpub-auto-sugarcrm-resources|SugarCRM Resources]]
** [[#chap18.xhtml#leanpub-auto-technical-links|Technical Links]]
** [[#chap18.xhtml#leanpub-auto-other-links|Other Links]]
* [[#chap19.xhtml#appendix-a|<span class="section-number">20. </span>Appendix A - Code Examples]]
** [[#chap19.xhtml#leanpub-auto-metadata|Metadata]]
** [[#chap19.xhtml#leanpub-auto-module-installer|Module Installer]]
* [[#chap20.xhtml#appendix-b|<span class="section-number">21. </span>Appendix B - API Methods]]
** [[#chap20.xhtml#leanpub-auto-methods-1|Methods]]


</div>
