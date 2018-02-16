---
title: Adding Custom Module to Related to Field in SuiteCRM
date: 2015-07-30T12:00:00+01:00
author: Jim Mackin
tags: ["development"]
source: http://www.jsmackin.co.uk/suitecrm/adding-custom-module-related-field-suitecrm/
hidden: true
---

Sometimes when you create a new module you want it to appear in the
"Related To" dropdowns around SuiteCRM. This post will cover the
simple method of adding modules to these dropdowns.

In this post we’ll add a fictional "Sport` module to the dropdown.
We’ll end up with this:

![Related to With Sport](/images/en/community/22RelatedToWithSport.png)

The related to dropdown, like most in SuiteCRM can be changed by using
the dropdown editor within SuiteCRM. We’re going to use the dropdown
editor to add our custom module.

If you want to target the Related To module in Notes then edit the
record_type_display_notes dropdown. For other related to dropdowns edit
the parent_type_display.

We start by adding a new entry to the dropdown with the modules name as
the "Item Name" and the display label we wish to use as the "Display
Label". I.e. in our example we’ll have

`ABC_Sport` as the `Item Name` and `Sport` as the `Display
Label` as in this image:

![DropdownEditorSport](/images/en/community/23DropdownEditorSport.png)

And that’s it! SuiteCRM will use the module name to load the correct
popup when searching for the module and will store this when saving the
record. Your custom module can now be added to notes and the like.
