---
date: 2017-04-14
title: Scheduler Jobs in SuiteCRM in Linux - the Definitive Guide
author: Pedro Rodrigues
hidden: true
---

SuiteCRM uses a number of `Scheduler jobs` that are supposed to run at scheduled times, supporting functionalities like search indexing, workflows, email notifications, database maintenance, etc.

When completing installation, the Scheduler jobs need to be **manually enabled**. This is done by asking your operating system to run a script called cron.php every minute. This, in turn, manages all SuiteCRM jobs according to their proper schedules. This can all be managed at the `Admin / Schedulers` screen.

<!--more-->

In Windows this is setup on the system's "Task Scheduler"; **in Linux and iOS, which is the focus of this post,** it is setup in crontab. During the installation you will receive detailed instructions with the specific commands you need to run to setup these jobs. After installation, you can still access these instructions at the bottom of the `Admin / Schedulers` screen.

To make sure your Scheduler jobs don't create permissions problems, **the standard practice is to run them under the same user that your Web server runs under**. For different configurations, the allowed_cron_users array in config.php must be adjusted.

## What are the crontab basics I need to understand? ##

In Linux there can be one crontab per user. This applies even to users who can't login to a shell, like the standard web-server users found in many default installations (like `www-data` and `nobody`). Throughout these examples I will be using `www-data`, but you can change that to whatever user you want.

To list the contents of a specific user's crontab, use something like this command:

`sudo crontab -l -u www-data`

And to edit those contents, use the `-e` switch instead:

`sudo crontab -e -u www-data`

Some flavors of Linux (notably Ubuntu) have yet another crontab which is the **system-wide crontab**. This is edited by editing a file:

`sudo nano /etc/crontab`

Notice that the comments inside this crontab explain that it is the system-wide crontab. Here you can specifiy commands to be run as any user, so it has an extra column where you say which user the command runs under, for example:

`*  *    * * *   www-data cd /var/www/html; php -f cron.php > /dev/null 2>&1`

See that `www-data` in there? That would not be there in a specific user's crontab. That username column is just for the system-wide crontab.

## Which user should these jobs run under? ##

The answer will vary from system to system. However, a standard acceptable solution is to find out which user your web-server runs under and use this user for the cron jobs also. This simplifies the design of your permissions scheme and basically ensures that the two processes (the web app and the cron jobs) accessing the same database and files don't create permissions problems for one another.

**Getting this wrong can severely impact your installation**. Make sure that your permissions scheme is such that what one process writes and makes writable, the other can also read and write.

If you were running your cron jobs as root for some time, due to a wrong crontab configuration, after you fix it, remember to reset correct ownership and permissions on the entire SuiteCRM directory tree, and then do a `Quick Repair and Rebuild`.

## And how can I find out which user my web server runs under? ##

There are many ways to do this that you can read about online. I will list a few that are specific to SuiteCRM:

1. In versions 7.8.3 and later, go into `Admin / Schedulers` and see that crontab command on the bottom of the screen.
2. In versions 7.8.3 and later, check the `cron_allowed_users` section of your config.php file, it should be there.
3. On any version, go into `Admin / Diagnostics` and select only `phpinfo`. Once that file is produced, check the `APACHE_RUN_USER` value it provides. (Note: don't run php -i from the command-line, it's not the same thing)

## What is the cron_allowed_users section in config.php?

> The information in this section applies only to SuiteCRM version 7.8.3 and newer.

Starting with SuiteCRM 7.8.3 in April 2017, a mechanism was introduced to limit the users that are allowed to run cron jobs. Earlier versions don't check the user and let you run cron as any user (so YOU need to make sure it is the correct user, and not `root`, for example)

Only users listed in an array called `cron_allowed_users` in `config.php` (on the root of your SuiteCRM installation) will be allowed to run `cron.php`. Any other users will cause that script to terminate itself every time it starts.

Normally, **you don't have to do anything** to add a valid user to this array, since SuiteCRM installer will do that for you automatically, adding the current web server user, if it is not already there. The Upgrade Wizard will do the same (the downside of these automatic additions is that if you want to keep your web server user _out_ of that array, it'll take some work on every upgrade. But this should be very rare).

You can add more than one allowed user. `root` is particularly NOT recommended, and the Installer does not add `root` even if it the web server user running the installer, you have to do so manually if you really want to.

The relevant section of config.php might look like this:

{% highlight php %}
'cron' =>
   array (
	 'max_cron_jobs' => 10,
	 'max_cron_runtime' => 30,
	 'min_cron_interval' => 30,
	 'allowed_cron_users' =>
	 array (
		0 => 'www-data',
	 ),
   ),
{% endhighlight %}

## Which command should I use in crontab?

The basic idea is to frequently run `cron.php`, and that takes care of everything.

Using the knowledge given above on how to edit the right crontab, and which user's crontab it should be, add this command to the bottom of the crontab (given in general form):

`*  *    * * *   cd /your/suitecrm/folder; php -f cron.php > /dev/null 2>&1`

And now some specific, typical examples. First, **Ubuntu Server**, system-wide crontab:

`*  *    * * *   www-data cd /var/www/html; php -f cron.php > /dev/null 2>&1`

If you're editing the specific `www-data` user crontab, omit the username in that command.

A very common install is the one provided by **Bitnami**. They advise using this command:

`* * * * *  su daemon -s /bin/sh -c "cd /opt/bitnami/apps/suitecrm/htdocs; /opt/bitnami/php/bin/php -f cron.php > /dev/null 2>&1"`

Of course you can also use crontab's syntax to make it run less frequently, which could prove relevant in a heavily used system. To run every two minutes, instead of every minute, change the first column, like this:

`*/2  *    * * *   cd /your/suitecrm/folder; php -f cron.php > /dev/null 2>&1`

## What if I can't edit crontab?

If you don't have access as sudo to edit some crontab, which might occur on shared hosting scenarios, contact your web hosting technical support to request the changes. You can direct them to these instructions here.

## What php.ini settings apply to the cron jobs?

First, recall that there are usually at least two independent PHP configurations in a system: the one that runs inside the web server and the one that runs from the command-line (CLI).

Cron jobs usually run from the CLI subsystem, which uses a different php.ini file. This means you have to configure things like `timezone` and other details specifically for the cron jobs.

To locate the several php.ini files in your system, you can use

`sudo find / -name php.ini 2>/dev/null`

To see which php.ini file your CLI is using, type

`php -i | grep php.ini`

## How can I make sure the jobs are actually running? ##

1. The `Admin / Schedulers` will show the latest run times of each job, and whether it had errors.

2. Linux's `syslog` normally logs which processes it launches in `cron`.

3. SuiteCRM's `suitecrm.log` will also log these events, as long as your log level covers it (you can check it and change it from `Admin / System Settings`).

4. In case some specific Scheduler Job is failing with an error, the suitecrm.log is also the place to start troubleshooting, along with the Web Server's log (often called `php_errors.log`).
