---
title: Creating an alert in SuiteCRM
date: 2015-08-25T12:00:00+01:00
author: Jim Mackin
tags: []
hidden: true
source: http://www.jsmackin.co.uk/suitecrm/suitecrm-creating-an-alert/
---

With the release of SuiteCRM 7.3 comes Alerts. These are displayed
within SuiteCRM as a small badge in the menu bar. I.e:

![SuiteCRMAlerts0](/images/en/community/20SuiteCRMAlerts0.png)

<!--more-->

Since these are just stored as beans we can add notifications by simply
creating a new record with the appropriate values and saving it. For
example:

```php
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

![SuiteCRMExampleAlert](/images/en/community/21SuiteCRMExampleAlert.png)
