<?php

  require_once('replacements.php');

  $dirname='./content/developer';


  $dir = new DirectoryIterator($dirname);
  foreach ($dir as $fileinfo) {
      if (!$fileinfo->isDot()) {
          var_dump($fileinfo->getFilename());
	  // full file replacements:
	  $chapter = file_get_contents($fileinfo->getPathname());
          $chapter = strtr($chapter, $array_from_to);
     	  $chapter=preg_replace('/\[\[leanpub(.*)\]\]/', '', $chapter);
     	  $chapter=preg_replace('/\[\[(\w-*)*chapter\]\]/', '', $chapter);
     	  $chapter=preg_replace('/\'\'\'\'\'/', '', $chapter);

          $front=preg_replace('/\n*(---\n.*\n.*\n---)(\X+)/', '$1', $chapter);
          $rest=preg_replace('/\n*(---\n.*\n.*\n---)(\X+)/', '$2', $chapter);
/*
echo PHP.EOL.'%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%5'.PHP_EOL;
echo $front;
echo PHP.EOL.'%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%5'.PHP_EOL;
echo substr($rest,0,300);
echo PHP.EOL.'%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%5'.PHP_EOL;
*/

       	  $rest=preg_replace('/\n(.*\n)([\~]+)/', '= $1', $rest);
//     	  $rest=preg_replace('/\n(.*\n)([\-]+)/', '== $1', $rest);
     	  $rest=preg_replace('/\n(.*\n)([\^]+)/', '== $1', $rest);
 	  $rest=preg_replace('/\n(.*\n)([\+]+)/', '=== $1', $rest);
 	  $chapter = $front.PHP_EOL.$rest;
 	  $chapter=preg_replace('/\n\n\n/', "\n\n", $chapter);

	  // line by line fixes:
          $fixed='';
	  $count=0;
          $lines=Array();
          $lines=explode("\n", $chapter);
	  echo '---------'.count($lines).'--------';	
	  foreach ($lines as $line) {
                 if ($line=='....') {
                     if (!$inblock) {
                        $inblock=true;
                        $line='[source,php]';
                     } else {
                        $inblock=false;
                        $line='';
		     }
                 }
          	 $fixed = $fixed.PHP_EOL.$line;
                 $previousLine = $line;
          	 $count++;
          	 //if ($count == 145) break;
  	  }
	  echo $count;	
           //$chapter = str_replace(
           file_put_contents($fileinfo->getPathname(), $fixed);
      } 
      // die();
  }

?>
