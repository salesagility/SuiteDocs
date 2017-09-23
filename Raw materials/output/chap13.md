---
layout: page
title: "Chapter 13"
---
<span id="chap12.xhtml"></span>

<div>

## <span class="section-number">13. </span>Scheduled Tasks ##

### Intro ###

Scheduled tasks are performed in SuiteCRM by the scheduler module. Jobs are placed into the queue either through the defined scheduled tasks or, for one off tasks, by code creating job objects. Note that both scheduled tasks and using the job queue requires that you have the schedulers set up. This will vary depending on your system but usually requires adding an entry either to Cron (for Linux systems) or to the windows scheduled tasks (for windows). Opening the scheduled tasks page within SuiteCRM will let you know the format for the entry.

### Scheduler ###

Scheduled tasks allow SuiteCRM to perform recurring tasks. Examples of these which ship with SuiteCRM include checking for incoming mail, sending email reminder notifications and indexing the full text search. What if you want to create your own tasks?

SuiteCRM lets you define your own Scheduler. We do this by creating a file in<br />
<code>custom/Extension/modules/Schedulers/Ext/ScheduledTasks/</code>. You can give this file a name of your choice but it is more helpful to give it a descriptive name. Let’s create a simple file named<br />
<code>custom/Extension/modules/Schedulers/Ext/ScheduledTasks/CleanMeetingsScheduler.php</code>. This will add a new job to the job strings and a new method that the scheduler will call:

<div class="code-block">

Example 13.1: Example Clean Meetings Scheduler


-----

<div class="highlight">

<pre> 1 &lt;?php
 2 /*
 3  * We add the method name to the $job_strings array.
 4  * This is the method that jobs for this scheduler will call.
 5  */
 6 $job_strings[] = 'cleanMeetingsScheduler';
 7 
 8 /**
 9  * Example scheduled job to change any 'Planned' meetings older than a month
10  * to 'Not Held'.
11  * @return bool
12  */
13 function cleanMeetingsScheduler(){
14   //Get the cutoff date for which meetings will be considered
15 	$cutOff = new DateTime('now - 1 month');
16 	$cutOff = $cutOff-&gt;format('Y-m-d H:i:s');
17 
18 	//Get an instance of the meetings bean for querying
19   //see the Working With Beans chapter.
20   $bean = BeanFactory::getBean('Meetings');
21 
22   //Get the list of meetings older than the cutoff that are marked as Planned
23   $query = &quot;meetings.date_start &lt; '$cutOff' AND meetings.status = 'Planned'&quot;;
24   $meetings = $bean-&gt;get_full_list('',$query);
25 
26   foreach($meetings as $meeting){
27     //Mark each meeting as Not Held
28     $meeting-&gt;status = 'Not Held';
29     //Save the meeting changes
30     $meeting-&gt;save();
31   }
32   //Signify we have successfully ran
33   return true;
34 }</pre>

</div>

-----


</div>
We also make sure that we add a language file in<br />
<code>custom/Extension/modules/Schedulers/Ext/Language/en_us.cleanMeetingsScheduler.php</code> again, the name of the file doesn’t matter but it is helpful to use something descriptive. This will define the language string for our job so the user sees a nice label. See the section on language strings for more information. The key for the mod strings will be LBL_UPPERMETHODNAME. In our case our method name is <code>cleanMeetingsScheduler</code> so our language label key will be <code>LBL_CLEANMEETINGSSCHEDULER</code>.

<div class="code-block">

Example 13.2: Example Language string for Clean Meetings Scheduler


-----

<div class="highlight">

<pre>1 &lt;?php
2 //We add the mod string for our method here.
3 $mod_strings['LBL_CLEANMEETINGSSCHEDULER'] = 'Mark old, planned meetings as Not \
4 Held';</pre>

</div>

-----


</div>
If we perform a repair and rebuild our method will now be packaged up into the scheduler ext file (see the Extensions section for more information on this process) and will be available in the schedulers page. Note that for any changes to the scheduler method you will need to perform another quick repair and rebuild - even in developer mode. We can now create a new scheduler to call our new method:

<div class="image-with-caption center">

[a scheduler that uses our new method](Creating)(File:images/CreateMeetingsScheduler.png)
Creating a scheduler that uses our new method


</div>
This will now behave just like any other scheduler and we can have this run as often (or as rarely) as we would like. Take care here. The default frequency is every one minute. If your task is heavy duty or long running this may not be what you would prefer. Here we settle for once a day.

### Job Queue ###

Sometimes you will require code to perform a long running task but you do not need the user to wait for this to be completed. A good example of this is sending an email in a logic hook (see the Logic Hooks chapter for information on these). Assuming we have the following logic hook:

<div class="code-block">

Example 13.3: Example Email sending Logic Hook


-----

<div class="highlight">

<pre> 1 class SomeClass
 2 {
 3     function SomeMethod($bean, $event, $arguments)
 4     {
 5 
 6         //Perform some setup of the email class
 7         require_once &quot;include/SugarPHPMailer.php&quot;;
 8         $mailer=new SugarPHPMailer();
 9         $admin = new Administration();
10         $admin-&gt;retrieveSettings();
11         $mailer-&gt;prepForOutbound();
12         $mailer-&gt;setMailerForSystem();
13         $admin = new Administration();
14         $admin-&gt;retrieveSettings();
15         $admin-&gt;settings['notify_fromname']
16         $mailer-&gt;From     = $admin-&gt;settings['notify_fromaddress']
17         $mailer-&gt;FromName = $emailSettings['from_name'];
18         $mailer-&gt;IsHTML(true);
19 
20         //Add message and recipient.
21         //We could go all out here and load and populate an email template
22         //or get the email address from the bean
23         $mailer-&gt;Subject = 'My Email Notification! '.$bean-&gt;name;
24         $mailer-&gt;Body = $event. ' fired for bean '.$bean-&gt;name;
25         $mailer-&gt;AddAddress('Jim@example.com');
26         return $mailer-&gt;Send();
27     }
28 }</pre>

</div>

-----


</div>
This will work fine. However you do not want the user to have to wait for the email to be sent out as this can cause the UI to feel sluggish. Instead you can create a Job and place it into the job queue and this will be picked by the scheduler. Let’s look at an example of how you would do this.

First we want our Logic Hook class to create the scheduled job:

<div class="code-block">

Example 13.4: Example Scheduled Job Creation


-----

<div class="highlight">

<pre> 1 class SomeClass
 2 {
 3     function SomeMethod($bean, $event, $arguments)
 4     {
 5       require_once 'include/SugarQueue/SugarJobQueue.php';
 6       $scheduledJob = new SchedulersJob();
 7 
 8       //Give it a useful name
 9       $scheduledJob-&gt;name = &quot;Email job for {$bean-&gt;module_name} {$bean-&gt;id}&quot;;
10 
11       //Jobs need an assigned user in order to run. You can use the id
12       //of the current user if you wish, grab the assigned user from the
13       //current bean or anything you like.
14       //Here we use the default admin user id for simplicity
15       $scheduledJob-&gt;assigned_user_id = '1';
16 
17       //Pass the information that our Email job will need
18       $scheduledJob-&gt;data = json_encode(array(
19                                             'id' =&gt; $bean-&gt;id,
20                                             'module' =&gt; $bean-&gt;module_name)
21                                         );
22 
23       //Tell the scheduler what class to use
24       $scheduledJob-&gt;target = &quot;class::BeanEmailJob&quot;;
25 
26       $queue = new SugarJobQueue();
27       $queue-&gt;submitJob($scheduledJob);
28     }
29 }</pre>

</div>

-----


</div>
Next we create the BeanEmailJob class. This is placed into the<br />
<code>custom/Extensions/modules/Schedulers/Ext/ScheduledTasks/</code> directory with the same name as the class. So in our example we will have:<br />
<code>custom/Extensions/modules/Schedulers/Ext/ScheduledTasks/BeanEmailJob.php</code>

<div class="code-block">

Example 13.5: Example Scheduler job


-----

<div class="highlight">

<pre> 1 class BeanEmailJob implements RunnableSchedulerJob
 2 {
 3   public function run($arguments)
 4   {
 5 
 6     //Only different part of the email code.
 7     //We grab the bean using the supplied arguments.
 8     $arguments = json_decode($arguments,1);
 9     $bean = BeanFactory::getBean($arguments['module'],$arguments['id']);
10 
11     //Perform some setup of the email class
12     require_once &quot;include/SugarPHPMailer.php&quot;;
13     $mailer=new SugarPHPMailer();
14     $admin = new Administration();
15     $admin-&gt;retrieveSettings();
16     $mailer-&gt;prepForOutbound();
17     $mailer-&gt;setMailerForSystem();
18     $admin = new Administration();
19     $admin-&gt;retrieveSettings();
20     $mailer-&gt;From     = $admin-&gt;settings['notify_fromaddress'];
21     $mailer-&gt;FromName = $emailSettings['from_name'];
22     $mailer-&gt;IsHTML(true);
23 
24     //Add message and recipient.
25     //We could go all out here and load and populate an email template
26     //or get the email address from the bean
27     $mailer-&gt;Subject = 'My Email Notification! '.$bean-&gt;name;
28     $mailer-&gt;Body = $event. ' fired for bean '.$bean-&gt;name;
29     $mailer-&gt;AddAddress('Jim@example.com');
30     return $mailer-&gt;Send();
31   }
32   public function setJob(SchedulersJob $job)
33   {
34     $this-&gt;job = $job;
35   }
36 }</pre>

</div>

-----


</div>
Now whenever a user triggers the hook it will be much quicker since we are simply persisting a little info to the database. The scheduler will run this in the background.

#### Retries ####

Occasionally you may have scheduled jobs which could fail intermittently. Perhaps you have a job which calls an external API. If the API is unavailable it would be unfortunate if the job failed and was never retried. Fortunately the SchedulersJob class has two properties which govern how retries are handled. These are <code>requeue</code> and <code>retry_count</code>.

; <code>requeue</code>
: Signifies that this job is eligible for retries.
; <code>retry_count</code>
: Signifies how many retries remain for this job. If the job fails this value will be decremented.

We can revisit our previous example and add two retries:

<div class="code-block">

Example 13.6: Setting the retry count on a scheduled job


-----

<div class="highlight">

<pre> 6       $scheduledJob = new SchedulersJob();
 7 
 8       //Give it a useful name
 9       $scheduledJob-&gt;name = &quot;Email job for {$bean-&gt;module_name} {$bean-&gt;id}&quot;;
10 
11       //Jobs need an assigned user in order to run. You can use the id
12       //of the current user if you wish, grab the assigned user from the
13       //current bean or anything you like.
14       //Here we use the default admin user id for simplicity
15       $scheduledJob-&gt;assigned_user_id = '1';
16 
17       //Pass the information that our Email job will need
18       $scheduledJob-&gt;data = json_encode(array(
19                                             'id' =&gt; $bean-&gt;id,
20                                             'module' =&gt; $bean-&gt;module_name)
21                                         );
22 
23       //Tell the scheduler what class to use
24       $scheduledJob-&gt;target = &quot;class::BeanEmailJob&quot;;
25 
26       //Mark this job for 2 retries.
27       $scheduledJob-&gt;requeue = true;
28       $scheduledJob-&gt;retry = 2;</pre>

</div>

-----


</div>
See the section on [hooks](logic)(#chap11.xhtml#logic-hooks-chapter) for more information on how job failures can be handled.

### Debugging ###

With Scheduled tasks and jobs running in the background it can sometimes be difficult to determine what is going on when things go wrong. If you are debugging a scheduled task the the scheduled task page is a good place to start. For both scheduled tasks and job queue tasks you can also check the job_queue table. For example, in MySQL we can check the last five scheduled jobs:

<div class="code-block">

Example 13.7: Example MySQL query for listing jobs


-----

<div class="highlight">

<pre>SELECT * FROM job_queue ORDER BY date_entered DESC LIMIT 5</pre>

</div>

-----


</div>
This will give us information on the last five jobs. Alternatively we can check on specific jobs:

<div class="code-block">

Example 13.8: Example MySQL query for listing BeanEmailJobs


-----

<div class="highlight">

<pre>SELECT * FROM job_queue WHERE target = 'class::BeanEmailJob'</pre>

</div>

-----


</div>
In either case this will give details for the job(s):

<div class="code-block">

Example 13.9: Example MySQL list of jobs


-----

<div class="highlight">

<pre>*************************** 1. row ***************************
assigned_user_id: 1
              id: 6cdf13d5-55e9-946e-9c98-55044c5cecee
            name: Email job for Accounts 103c4c9b-336f-0e87-782e-5501defb5900
         deleted: 0
    date_entered: 2015-03-14 14:58:15
   date_modified: 2015-03-14 14:58:25
    scheduler_id:
    execute_time: 2015-03-14 14:58:00
          status: done
      resolution: success
         message: NULL
          target: class::BeanEmailJob
            data: {&quot;id&quot;:&quot;103c4c9b-336f-0e87-782e-5501defb5900&quot;,&quot;module&quot;:&quot;Account\
s&quot;}
         requeue: 0
     retry_count: NULL
   failure_count: NULL
       job_delay: 0
          client: CRON3b06401793b3975cd00c0447c071ef9a:7781
percent_complete: NULL
1 row in set (0.00 sec)</pre>

</div>

-----


</div>
Here we can check the status, resolution and message fields. If the status is <code>queued</code> then either the scheduler has not yet run or it isn’t running. Double check your Cron settings if this is the case.

It may be the case that the job has ran but failed for some reason. In this case you will receive a message telling you to check the logs. Checking the logs usually provides enough information, particularly if you have made judicious use of logging (see the chapter on logging) in your job.

It is possible that the job is failing outright, in which case your logging may not receive output before the scheduler exits. In this case you can usually check your PHP logs.

As a last resort you can manually run the scheduler from the SuiteCRM directory using:

<div class="code-block">

Example 13.10: Running the scheduler manually


-----

<div class="highlight">

<pre>php -f cron.php</pre>

</div>

-----


</div>
Using this in addition to outputting any useful information should track down even the oddest of bugs.


</div>
