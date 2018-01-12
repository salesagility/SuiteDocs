---
layout: page
title: "Chapter 11"
---
<span id="chap10.xhtml"></span>

<div>

## <span class="section-number">11. </span>Logging ##

### Logging messages ###

Logging in SuiteCRM is achieved by accessing the log global. Accessing an instance of the logger is as simple as

<div class="code-block">

Example 11.1: Accessing the log


-----

<div class="highlight">

<pre>$GLOBALS['log']</pre>

</div>

-----


</div>
This can then be used to log a message. Each log level is available as a method. For example:

<div class="code-block">

Example 11.2: Logging messages


-----

<div class="highlight">

<pre>1 $GLOBALS['log']-&gt;debug('This is a debug message');
2 $GLOBALS['log']-&gt;error('This is an error message');</pre>

</div>

-----


</div>
This will produce the following output:

<div class="code-block">

Example 11.3: Logging messages example output


-----

<div class="highlight">

<pre>1 Tue Apr 28 16:52:21 2015 [15006][1][DEBUG] This is a debug message
2 Tue Apr 28 16:52:21 2015 [15006][1][ERROR] This is an error message</pre>

</div>

-----


</div>
### Logging output ###

The logging output displays the following information by default:

<div class="code-block">

Example 11.4: Logging messages example output


-----

<div class="highlight">

<pre>&lt;Date&gt; [&lt;ProcessId&gt;][&lt;UserId&gt;][&lt;LogLevel&gt;] &lt;LogMessage&gt;</pre>

</div>

-----


</div>
; <code>&lt;Date&gt;</code>
: The date and time that the message was logged.
; <code>&lt;ProcessId&gt;</code>
: The PHP process id.
; <code>&lt;UserId&gt;</code>
: The ID of the user that is logged into SuiteCRM.
; <code>&lt;LogLevel&gt;</code>
: The log level for this log message.
; <code>&lt;LogMessage&gt;</code>
: The contents of the log message.

### Log levels ###

Depending on the level setting in admin some messages will not be added to the log e.g if your logger is set to <code>error</code> then you will only see log levels of <code>error</code> or higher (<code>error</code>, <code>fatal</code> and <code>security</code>).

The default log levels (in order of verbosity) are:

* <code>debug</code>
* <code>info</code>
* <code>warn</code>
* <code>deprecated</code>
* <code>error</code>
* <code>fatal</code>
* <code>security</code>

Generally on a production instance you will use the less verbose levels (probably <code>error</code> or <code>fatal</code>). However whilst you are developing you can use whatever level you prefer. I prefer the most verbose level - <code>debug</code>.


</div>
