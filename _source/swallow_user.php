<?php
  $filename=__DIR__.'/userguide.adoc';
  echo $filename;
  $book = file($filename);
  echo PHP_EOL.count($book).PHP_EOL;
  $count=0;
  $chapnum=0;
  $chapters=Array();
  $chapter='';
  foreach ($book as $line) {
	  echo $count.' '.$line.' '.(strstr($line,'id="chap')!=null);
	  if (strstr($line,'[[')!=null) {
		  //prepend front-matter:
		  $chapter = '---'
		     //.PHP_EOL.'permalink: "/chap'.sprintf('%02d', $chapnum).'.html"'
		     .PHP_EOL."weight: $chapnum"
		     .PHP_EOL.'title: "Chapter '.sprintf('%02d', $chapnum).'"'
			 .PHP_EOL.'---'.PHP_EOL.$chapter;
 
		  $chapters[]=$chapter;
		  $chapnum=$chapnum+1;
		  $chapter=$line;  // re-start with just this one line
		  continue;
	  }
	  $from = array("======", "=====", "====", "===", "==");
          $to =   array("######", "#####", "####", "###", "##");
	  $pretty=str_replace($from, $to, $line);
          $pretty=preg_replace('/\[\[(.*?)\|(.*?)\]\]/', '[$2]($1)', $pretty);
          $pretty=preg_replace('/\[(.*?) (.*?)\]/', '[$2]($1)', $pretty);

          $chapter = $chapter.$pretty;
	  $count++;
  	  if ($count == 145) break;
  }

  foreach ($chapters as $c => $out) {
     echo PHP_EOL.__DIR__.'/user_swallowed/chap'.sprintf('%02d', $c).'.adoc';
     file_put_contents(__DIR__.'/user_swallowed/chap'.sprintf('%02d', $c).'.adoc', $chapters[$c]);   //,FILE_APPEND);
  }
?>


