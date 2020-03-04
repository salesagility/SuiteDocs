#!/bin/bash

cat /etc/issue
asciidoctor -V
hugo 
hugoReturnCode=$?

if [ $hugoReturnCode -ne 0 ] 
  then 
     echo "Hugo failed with return code "$hugoReturnCode"!!! ------------------------------------ !!!"
  else
     echo "Hugo succeeded, running htmltest..."
     curl https://htmltest.wjdp.uk | bash
     ./bin/htmltest  | tee >(grep -v 'errors in\|failed in\|htmltest started\|======' | cut -d '-' -f 1 | sort | uniq -c -w 10)
fi

exit $hugoReturnCode
