#!/bin/bash 

grep "actions/setup-python" ci-mary-j-jenkins.yml

ACTION=-1
echo $ACTION_PI_SETUP_RST
if (( $? == 0 )) ; then  
 ACTION=true 
else
 ACTION=false 
fi
echo $ACTION
#exit
git push --set-upstream origin $1 
git add .
git commit -m "$2" 
git push 
