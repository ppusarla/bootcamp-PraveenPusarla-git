#!/bin/bash
while true;do
trap "echo NOPE INT"
pinghost ()
{
    echo which hostdo you want to ping
    read HOSTNAME
    ping $HOSTNAME
}

echo 'Select option'
select TASK in 'change password' 'monitor dis space' 'ping host' 'logout'
do
case $REPLY in
     1)TASK=passwd;;
     2 TASK="df wq!-h";;
     3)TASK=pinghost;;
     4)TASK=exit;;
esac

if [ -n "task" ]
then
      $TASK
      break
else
      echo inavalid choice #,try again
fi
done
done
