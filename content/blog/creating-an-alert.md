---
title: Creating an alert in SuiteCRM
date: 2015-08-25T12:00:00+01:00
author: Jim Mackin
tags: []
source: http://www.jsmackin.co.uk/suitecrm/suitecrm-creating-an-alert/
hidden: true
---

With the release of SuiteCRM 7.3 comes Alerts. These are displayed
within SuiteCRM as a small badge in the menu bar. I.e:

![SuiteCRMAlerts0](/images/en/community/20SuiteCRMAlerts0.png)

<!--more-->

Since these are just stored as beans we can add notifications by simply
creating a new record with the appropriate values and saving it. For
example:

<<<<<<< HEAD:content/community/future-blog-posts/8.creating-an-alert.adoc
.Example
[source,php]
=======
```php
>>>>>>> 16d81cf7aa486cd983f69bd15ee5acf2eb4c8942:content/blog/creating-an-alert.md
<?php
$alert = BeanFactory::newBean('Alerts');
$alert->name = 'My Alert';
$alert->description = 'This is my alert!';
$alert->url_redirect = 'index.php';
$alert->target_module = 'Account';
$alert->assigned_user_id = '1';
$alert->type = 'info';
$alert->is_read = 0;
$alert->save();
```

Calling this can be used to create an alert for a specific user like so:

<<<<<<< HEAD:content/community/future-blog-posts/8.creating-an-alert.adoc
[width="80", cols="50,30", frame="none", grid="none"]
|===
|Calling this can be used to create an alert for a specific user like so: |image:21SuiteCRMExampleAlert.png[SuiteCRMExampleAlert]
|===
=======
![SuiteCRMExampleAlert](/images/en/community/21SuiteCRMExampleAlert.png)
>>>>>>> 16d81cf7aa486cd983f69bd15ee5acf2eb4c8942:content/blog/creating-an-alert.md
