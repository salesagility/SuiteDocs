---
title: Setting up SuiteCRM on Digital Ocean
date: 2015-10-30T12:00:00+01:00
author: Jim Mackin
tags: []
source: http://www.jsmackin.co.uk/suitecrm/setting-up-suitecrm-on-digital-ocean/
hidden: true
---

This post will cover deploying an instance of SuiteCRM to Digital Ocean
from creating the droplet to logging into SuiteCRM. If there’s enough
interest I’ll do similar guides for other hosts.

First you’ll need a [Digital Ocean](https://www.digitalocean.com/?refcode=ec80c6be8923) account. If you don’t have one it’s easy to create one.

From the droplets page of your account we’ll click on the "Create
Droplet" button.

![Create Droplet Button](/images/en/community/05CreateDroplet.png)

This will bring us to the following page, where we will do the
following:

![CreateDropletPage](/images/en/community/06CreateDropletPage.png)

Give our new droplet a name - In this case *MySuiteCRMInstance*.

1. *Choose a size* - I’ve went with the smallest, sizes can always be
increased as needed.
2. *Choose a region* - It’s best to choose a region closest to the users of
the instance - London for me.
3. *Choose an image* - I’m going with Ubuntu 14.04 which is the current Long
Term Support release.

Optionally you can add extra settings such as backups and add SSH keys
(which is recommended).

Finally we can create our droplet. When this is done you’ll see a
progress page, creating the droplet is usually pretty quick.

![DropletProgress](/images/en/community/07DropletProgress.png)

When this is complete you’ll be shown the droplet details page and
receive an email with the details of your droplet.

![DropletDetails](/images/en/community/08DropletDetails.png)

You can now ssh into your droplet. For simplicity we’ll use the
`Console Access` option on the droplet details page. You will need to
change your password. Now is also a good time to create a new non-root
user.

![FirstTimeLogin](/images/en/community/09FirstTimeLogin.png)

Now we have a fresh Ubuntu install we can begin setting up our
environment for SuiteCRM.

First off we’ll do an update and upgrade of packages:

```sh
apt-get update;
apt-get upgrade;
```

This will prompt you to update packages. Agree with `Y`.

Next we’ll want to install the necessary packages and software. These
are:

* *Apache* - The web server that will serve up SuiteCRM.
* *MySQL* - The database that we’ll be using
* *PHP5* - SuiteCRM runs on the PHP programming language.
* *APC* - An (optional) PHP addition which will provide caching and speed up
SuiteCRM.

```sh
apt-get install apache2 mysql-server php5 php5-mysql libapache2-mod-php5 php5-mcrypt php-apc php5-imap php5-curl php5-gd unzip;
php5enmod imap;
service apache2 restart;
```

Again you will want to agree to the install by pressing `Y`.

You’ll be prompted to supply a password for the MySQL root user, do so
now.

![MySQLSetup](/images/en/community/10MySQLSetup.png)

When this finishes you can go to the IP address of your droplet in a
browser and confirm that apache was installed correctly. You should an
it works page headed with the following:

![ApacheDefaultPage](/images/en/community/11ApacheDefaultPage.png)

Next up we want to actually get an instance of SuiteCRM. We’ll use th

```
cd /var/www/html;
rm index.html;
wget http://heanet.dl.sourceforge.net/project/suitecrm/SuiteCRM-7.3.2.zip
unzip -q SuiteCRM-7.3.2.zip;
mv SuiteCRM-7.3.2/* .;
rm -r SuiteCRM-7.3.2 SuiteCRM-7.3.2.zip;
```

Set permissions

```sh
chown -R www-data:www-data .;
chmod -R 755 .;
chmod -R 775 cache custom modules themes data upload config_override.php;
```

Now if we go to our droplets IP address we should see the SuiteCRM
installation screen:

![SuiteCRMInstall](/images/en/community/12SuiteCRMInstall.png)

Click next and a page detailing what SuiteCRM will need for the install
is displayed. Double check this screen but we should be good to go. Once
again click next.

Next up will be the licence page. SuiteCRM is open source and is
licenced under the [AGPL](https://en.wikipedia.org/wiki/Affero_General_Public_License).
Accept this and click next.

![SuiteCRMLicence](/images/en/community/13SuiteCRMLicence.png)

This will prompt a system check which should pass. We’ll be presented
with an option to do a custom or typical install. These are pretty
similar so we’ll go with typical for simplicity.

![InstallType](/images/en/community/14InstallType.png)

Next we’ll be prompted to choose a database type. Our only option is
Mysqli so choose that and click next.

![ChooseDBType](/images/en/community/15ChooseDBType.png)

Next we’ll provide the actual database configuration. Give your new
database a name, I’ve imaginatively went with "*suitecrm*". Provide the
host for the database, since we’re running the database locally we can
go with "*localhost*".

![DatabaseDetails](/images/en/community/16DatabaseDetails.png)

It’s good practice to create a separate user for the SuiteCRM database
so we supply a username and password for this. You can also optionally
populate the database with demo data.

Next up we provide the admin user for SuiteCRM.

![UserSetup](/images/en/community/17UserSetup.png)

After this SuiteCRM will complete the install process and provide some
details.

![InstallComplete](/images/en/community/18InstallComplete.png)

Finally you will be presented with a login screen:

![Login](/images/en/community/19Login.png)

Enter your username and password and you’ll be all set!
