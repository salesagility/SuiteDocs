#!/bin/bash

asciidoctor -V
hugo thou shalt fail
hugoReturnCode=$?
echo "Hugo return code is "$hugoReturnCode

if [ $hugoReturnCode -ne 0 ] 
   then echo "Error is caught in if"
fi
