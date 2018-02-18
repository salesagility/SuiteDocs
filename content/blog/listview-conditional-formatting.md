---
title: ListView Conditional Formatting
date: 2016-03-04T12:00:00+01:00
author: Jim Mackin
tags: ["development"]
source: http://www.jsmackin.co.uk/suitecrm/suitecrm-list-view-conditional-formatting/
hidden: true
---

Sometimes you will want to format fields that are shown on the list view
depending on the values. For example you may want to colour the
direction field on calls differently or to highlight quotes that expire
soon.

In this post we’ll be adding a simple coloured border to the
`Industry` field in the Accounts list view. We’ll end up with
something similar to this:

![Coloured fields on the list view](/images/en/community/02IndustryColours.png)

This is fairly straightforward. We’ll define a logic hook which will
override the industry value and add in the styling we want.

First off we define the logic hook in
`custom/Extension/modules/Accounts/Ext/LogicHooks/ListViewHighlight.php`
with the following:

```php
<?php
$hook_array['process_record'][] = Array(1, 'Highlight account industry', 'custom/modules/Accounts/HighlightIndustryLogicHook.php','HighlightIndustryLogicHook', 'highlightIndustry');
```

This sets up a `process_record` logic hook. This will be fired whenever
a record is prepared for a list view or subpanel.

Next up we will define the class which will actually perform the
formatting in `custom/modules/Accounts/HighlightIndustryLogicHook.php`

```php
<?php
class HighlightIndustryLogicHook{

    public function highlightIndustry(SugarBean $bean, $event, $arguments){
        $colour = substr(md5($bean->industry),0,6);
        $bean->industry = "<div style='border: solid 5px #$colour;'>".$bean->industry."</div>";
    }

}
```

This simply generates colour based on the Accounts industry and sets it
as a border for the field.

Any issues? Let me know via the [Contact Form](http://www.jsmackin.co.uk/contact/).
