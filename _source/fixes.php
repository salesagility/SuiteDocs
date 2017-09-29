<?php

  require_once('replacements.php');

  $dirname='./content/developer-ascii';


  $dir = new DirectoryIterator($dirname);
  foreach ($dir as $fileinfo) {
      if (!$fileinfo->isDot()) {
           var_dump($fileinfo->getFilename());
           $chapter = file_get_contents($fileinfo->getPathname());
           $chapter = strtr($chapter, $array_from_to);
           //$chapter = str_replace(
           file_put_contents($fileinfo->getPathname(), $chapter);
      }
  }

die();



          $pretty=str_replace($from, $to, $line);
          $pretty=preg_replace('/\[\[(.*?)\|(.*?)\]\]/', '[$2]($1)', $pretty);
          $pretty=preg_replace('/\[(.*?) (.*?)\]/', '[$2]($1)', $pretty);

?>
