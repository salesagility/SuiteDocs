---
title: Nice Relationships
date: 2016-03-18T21:13:44+01:00
author: Jim Mackin
tags: [featured, development]
hidden: true
---

Module builder and studio are both great tools. They allow simple
customisation of a SuiteCRM instance without having to know all the
inner workings of SuiteCRM. In particular studio and module builder
allows specifying relationships between modules.

However these relationships can leave a lot to be desired. The generated
relationship names and field names are often very verbose and, even for
one to many relationships, a join table is created. This post will cover
cleaning up some studio created relationships to make them clearer.

There’s a lot of tweaks to vardefs and files in this post. As always you
will want to do a full backup before making any changes.

First off let’s add a relationship to try out our changes on. We can
first add a one to many relationships between products and accounts like
so:

![](/images/en/community/01nice-relationships.png)

This will create an `accounts_aos_products_1_c` table (assuming this is
your first custom relationship between these two modules).

Looking at this table we see the following fields:

* id
* date_modified
* deleted
* accounts_aos_products_1accounts_ida
* accounts_aos_products_1aos_products_idb

We have two main issues here. The first is that those field names are
pretty long. Secondly we may not even want a join table if the
relationship is truly one to many.

## Fixing many to many field names

Often you will end up writing SQL to query the SuiteCRM tables, whether
this is when querying the database or writing custom SQL to use in code
typing `accounts_aos_products_1aos_products_idb` is going to get
tiresome.

Let’s look at how we would currently list account names and linked
products:

```sql
SELECT accounts.name, aos_products.name
FROM accounts
INNER JOIN accounts_aos_products_1_c
    ON (accounts.id = accounts_aos_products_1_c.accounts_aos_products_1accounts_ida AND
        accounts_aos_products_1_c.deleted = 0) 7
INNER JOIN aos_products
    ON (aos_products.id = accounts_aos_products_1_c.accounts_aos_products_1aos_products_idb AND
        aos_products.deleted = 0)
WHERE accounts.deleted = 0;
```

That is some ugly SQL…

Luckily we can quite easily change these column names though we do have
to do so in several places.

We need to decide what we are actually changing them to. The column
names by default are `<RelationshipName>_<module>_id<x>`. +
So `accounts_aos_products_1accounts_ida` is the account id, let’s just
change that to `account_id`. `accounts_aos_products_1aos_products_idb`
therefore is the product id. Let’s change this to `product_id`.

We can safely do this via a search and replace but you want to make sure
you change this in the following places:

`custom/metadata/accounts_aos_products_1MetaData.php` This will change
the actual table definition

The above is actually all you need. However it’s good housekeeping to
also clean up the other instances:

* `custom/Extension/modules/relationships/vardefs/accounts_aos_products_1_AOS_Products.php`
* `custom/Extension/modules/relationships/relationships/accounts_aos_products_1MetaData.php`
* `custom/Extension/modules/AOS_Products/Ext/Vardefs/accounts_aos_products_1_AOS_Products.php`

After a quick repair and rebuild (and making the database changes)
you’ll be good to go.

If you have existing data you will need to migrate this over:

```sql
UPDATE accounts_aos_products_1_c
SET accounts_id = accounts_aos_products_1accounts_ida, product_id = accounts_aos_products_1aos_products_idb
WHERE account_id IS NULL AND product_id IS NULL
```

Our example join from earlier now looks much nicer (or at least, more
readable):

```sql
SELECT accounts.name, aos_products.name
FROM accounts
INNER JOIN accounts_aos_products_1_c
    ON (accounts.id = accounts_aos_products_1_c.accounts_id AND accounts_aos_products_1_c.deleted = 0) 7
INNER JOIN aos_products
    ON (aos_products.id = accounts_aos_products_1_c.products_id AND aos_products.deleted = 0)
WHERE accounts.deleted = 0;
```

## Moving to a true one to many schema

SuiteCRM by default will create a many to many database schema even for
one to many relationships created through studio. This can be nice if,
in the future, the relationship changes. However if it is unlikely to
change it complicates SQL for querying the relationships. If you will be
writing SQL to query these tables you may want to consider switching to
a one to many schema.

We can start by deleting the join table definition. The file
`custom/metadata/accounts_aos_products_1MetaData.php` can be removed. As can
`custom/Extension/modules/relationships/relationships/accounts_aos_products_1MetaData.php`
and
`custom/Extension/application/Ext/TableDictionary/accounts_aos_products_1.php`

Next up we will want to change the vardefs for AOS_Products so that it no longer
uses the middle table. Instead we will add an id field to products to link to
the account.

Currently the file
`custom/Extension/modules/AOS_Products/Ext/Vardefs/accounts_aos_products_1_AOS_Products.php`
looks like:

```php
<?php
// created: 2016-03-18 22:09:16
$dictionary["AOS_Products"]["fields"]["accounts_aos_products_1"] = array (
    'name' => 'accounts_aos_products_1',
    'type' => 'link',
    'relationship' => 'accounts_aos_products_1',
    'source' => 'non-db',
    'module' => 'Accounts',
    'bean_name' => 'Account',
    'vname' => 'LBL_ACCOUNTS_AOS_PRODUCTS_1_FROM_ACCOUNTS_TITLE',
    'id_name' => 'accounts_aos_products_1accounts_ida',
);
$dictionary["AOS_Products"]["fields"]["accounts_aos_products_1_name"] = array (
    'name' => 'accounts_aos_products_1_name',
    'type' => 'relate',
    'source' => 'non-db',
    'vname' => 'LBL_ACCOUNTS_AOS_PRODUCTS_1_FROM_ACCOUNTS_TITLE',
    'save' => true,
    'id_name' => 'accounts_aos_products_1accounts_ida',
    'link' => 'accounts_aos_products_1',
    'table' => 'accounts',
    'module' => 'Accounts',
    'rname' => 'name', );
$dictionary["AOS_Products"]["fields"]["accounts_aos_products_1accounts_ida"] = array (
    'name' => 'accounts_aos_products_1accounts_ida',
    'type' => 'link',
    'relationship' => 'accounts_aos_products_1',
    'source' => 'non-db',
    'reportable' => false,
    'side' => 'right', 'vname' => 'LBL_ACCOUNTS_AOS_PRODUCTS_1_FROM_AOS_PRODUCTS_TITLE',
);
```

We just need to change the id name, and change some of the definitions so that we have:

```php
<?php
// created: 2016-03-18 22:09:16
$dictionary["AOS_Products"]["fields"]["accounts_aos_products_1"] = array (
    'name' => 'accounts_aos_products_1',
    'type' => 'link',
    'relationship' => 'accounts_aos_products_1',
    'source' => 'non-db',
    'module' => 'Accounts',
    'bean_name' => 'Account',
    'vname' => 'LBL_ACCOUNTS_AOS_PRODUCTS_1_FROM_ACCOUNTS_TITLE',
    'id_name' => 'account_id', //Changed
        'link_type'=>'one', //Added
        'side' => 'left',//Added
);
$dictionary["AOS_Products"]["fields"]["accounts_aos_products_1_name"] = array (
    'name' => 'accounts_aos_products_1_name',
    'type' => 'relate',
    'source' => 'non-db',
    'vname' => 'LBL_ACCOUNTS_AOS_PRODUCTS_1_FROM_ACCOUNTS_TITLE',
    'save' => true,
    'id_name' => 'account_id', //Changed
    'link' => 'accounts_aos_products_1',
    'table' => 'accounts',
    'module' => 'Accounts',
    'rname' => 'name',
);
$dictionary["AOS_Products"]["fields"]["account_id"] = array (
    'name' => 'account_id',
    'type' => 'id', 'reportable' => false,
    'vname' => 'LBL_ACCOUNTS_AOS_PRODUCTS_1_FROM_AOS_PRODUCTS_TITLE', );
```

If we do a quick repair and rebuild we will be prompted to add a new
column to the aos_products table.

If you have existing data you’ll want to pull this over:

```sql
UPDATE aos_products
SET account_id = (
    SELECT accounts_aos_products_1_c.account_id
    FROM accounts_aos_products_1_c
    WHERE accounts_aos_products_1_c.product_id = aos_products.id AND accounts_aos_products_1_c.deleted =0)
    WHERE account_id IS NULL;
```

Unfortunately the above has now broken the products subpanel in
accounts. Let’s fix this.

We just need to add the relationship definition to
`custom/Extension/modules/Accounts/Ext/Vardefs/accounts_aos_products_1_Accounts.php`:

```php
$dictionary["Account"]["relationships"]['accounts_aos_products_1'] = array(
    'lhs_module' => 'aos_products',
    'lhs_table' => 'aos_products',
    'lhs_key' => 'account_id',
    'rhs_module' => 'Accounts',
    'rhs_table' => 'accounts',
    'rhs_key' => 'id',
    'relationship_type' => 'one-to-many',
    );
```
and we’re now finished. Our final example join SQL for our original
query would look something like:

```sql
SELECT accounts.name, aos_products.name
FROM accounts
INNER JOIN aos_products
    ON (aos_products.account_id = accounts.id AND aos_products.deleted = 0)
WHERE accounts.deleted = 0;
```

Much nicer.

If you have any issues or questions - [Let Jim Mackin know](http://www.jsmackin.co.uk/contact/)
