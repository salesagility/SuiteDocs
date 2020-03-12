#!/bin/bash

# output some version numbers:
cat /etc/issue
asciidoctor -V
echo -------------
echo Some Netlify environment variables you might want to know:
echo BASE_URL is $BASE_URL
echo BUILD_ID is $BUILD_ID
echo CONTEXT is $CONTEXT
echo DEPLOY_PRIME_URL is $DEPLOY_PRIME_URL
echo URL is $URL
echo DEPLOY_URL is $DEPLOY_URL
echo REPOSITORY_URL is $REPOSITORY_URL
echo BRANCH is $BRANCH
echo COMMIT_REF is $COMMIT_REF
echo -------------

# the main call to Hugo, passing it all parameters from the command-line:
echo Running Hugo with arguments: "$@"
hugo "$@"
hugoReturnCode=$?

# now the other steps in the pipeline, currently it's just htmltest, which doesn't count for the Result code
# (it can fail or not, but it's the Hugo result code that gets signalled to Netlify in the exit)
if [ $hugoReturnCode -ne 0 ] 
  then 
     echo "Hugo failed with return code "$hugoReturnCode"!!! ------------------------------------ !!!"
  else
     echo "Hugo succeeded, running htmltest..."
     # they provide a nice installer of the latest version:
     curl https://htmltest.wjdp.uk | bash
     # the tee and the rest are for counting errors by kind:
     ./bin/htmltest  | tee >(grep -v 'errors in\|failed in\|htmltest started\|======' | cut -d '-' -f 1 | sort | uniq -c -w 10)
fi

exit $hugoReturnCode
