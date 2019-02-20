<?php

  require_once('replacements.php');

  $inputDir='wikifiles';
  $inputExtension='.adoc'; 
  $outputDir='./../content/user/'; // end with slash '/'

  $dir = new DirectoryIterator($inputDir);
  foreach ($dir as $fileinfo) {
      if (!$fileinfo->isDot()) {
        if (strcmp($fileinfo->getFilename(), 'User Guide.adoc')) continue;
          echo $fileinfo->getFilename().'\n';
          $fileNameBare=substr($fileinfo->getFilename(), 0, strlen($fileinfo->getFilename()) - strlen($inputExtension));
          if (strcmp(substr($fileinfo->getFilename(), - strlen($inputExtension)), $inputExtension)) continue;
          var_dump($fileinfo->getFilename());
	  // full file replacements:
	  $chapter = file_get_contents($fileinfo->getPathname());
          $chapter = strtr($chapter, $array_from_to);
     	  $chapter=preg_replace('/(\n)\[\[(.*)\]\]\n/', '$1', $chapter);
     	  $chapter=preg_replace('/\[\[leanpub(.*)\]\]/', '', $chapter);
     	  $chapter=preg_replace('/\[\[(\w-*)*chapter\]\]/', '', $chapter);
     	  $chapter=preg_replace('/\'\'\'\'\'/', '', $chapter);

// Use these if it already has front matter:
//          $front=preg_replace('/\n*(---\n.*\n.*\n---)(\X+)/', '$1', $chapter);
//          $rest=preg_replace('/\n*(---\n.*\n.*\n---)(\X+)/', '$2', $chapter);
// Or these if it doesn't have any:
	  $front='';
	  $rest=$chapter;

	  $front = '---'.PHP_EOL.'Title: '.$fileNameBare.PHP_EOL.'---'.PHP_EOL;
	  $front.= PHP_EOL.':imagesdir: ./../../images/en/user'.PHP_EOL;
       	  $rest=preg_replace('/(\n)(.*\n)([\-]+)/', '$1= $2', $rest);
     	  $rest=preg_replace('/(\n)(.*\n)([\~]+)/', '$1== $2', $rest);
     	  $rest=preg_replace('/(\n)(.*\n)([\^]+)/', '$1== $2', $rest);
 	  $rest=preg_replace('/(\n)(.*\n)([\+]+)/', '$1=== $2', $rest);
 	  $chapter = $front.PHP_EOL.$rest;
 	  $chapter=preg_replace('/\n\n\n/', "\n\n", $chapter);

	  // line by line fixes:
          $fixed=Array();
	  $count=0;
          $fileNumber=0;
          $fixed[$fileNumber]='';
          $fileNames=Array();
          $fileNames[]=$fileNameBare;
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
                 if (!strcmp(substr($line,0,2), '= ')) {  // main titles
			$fileNumber = $fileNumber + 1;
                        $fixed[]='';
               	        $fixed[$fileNumber] = $fixed[$fileNumber]. '---'.PHP_EOL.'Title: '.substr($line,2).
                                              PHP_EOL.'Weight: '.($fileNumber*10).PHP_EOL.'---'.PHP_EOL;
	                $fixed[$fileNumber] = $fixed[$fileNumber]. PHP_EOL.':imagesdir: ./../../images/en/user'.PHP_EOL;
                        $fileNames[]=substr($line,2);
                 }
          	 $fixed[$fileNumber] = $fixed[$fileNumber].PHP_EOL.$line;
                 $previousLine = $line;
          	 $count++;
          	 //if ($count == 145) break;
  	  }
	  echo $count;	
          $fileNumber=0;
          foreach ($fileNames as $aFile) {
//              file_put_contents($outputDir . $fileinfo->getFilename(), $fixed[$fileNumber]);
              if ($fileNumber > 0) {
                 file_put_contents($outputDir . $aFile . $inputExtension, $fixed[$fileNumber]);
              }
              $fileNumber = $fileNumber + 1;
          } 
      } 
      // die();
  }

?>
