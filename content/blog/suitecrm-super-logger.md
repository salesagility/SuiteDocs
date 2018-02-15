---
title: SuiteCRM Super Logger
date: 2015-09-01T12:00:00+01:00
author: Jim Mackin
tags: ["development"]
hidden: true
---

I’ve previously created a very simple module for SuiteCRM which adds
coloured logging [SuiteCRM Colour
Logger]({{< relref "creating-custom-field-types" >}})). I’ve now expanded it somewhat to add extra features.

It’s now called [SuiteSuperLogger](http://www.jsmackin.co.uk/uploads/2015/08/suitesuperlogger.zip)
and allows specifying the log format in the config.

Enabling coloured logging can be done by adding

```php
$sugar_config['suitesuperlogger']['colour'] = true;
```

To the config.

Altering the log format can be done by adding the following to
`config_override.php`:

```php
$sugar_config['suitesuperlogger']['format'] = ':date:[:pid:][:userId:][:level:][:remoteAddr:][:forwardedAddr:][:requestMethod:]:msg:';
```

The following placeholders are accepted and will be replaced with an
appropriate value:

* *date*:: The date the message was logged
* *pid*:: The process id
* *userId*:: The logged in user id
* *level*:: The log level
* *remoteAddr*:: The remote address as found in the PHP $_SERVER superglobal.
* *forwardedAddr*:: The HTTP X FORWARDED FOR header
* *requestMethod*:: The request method (i.e. GET, POST, etc.)
* *msg*:: The actual log message
