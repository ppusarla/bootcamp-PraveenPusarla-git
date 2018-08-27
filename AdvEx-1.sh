#!/bin/bash
# Script that monitors avaliablity of a service

if [ -z $1];then

    echo you need to provide a service name when starting this script
    exit 3
else
     SERVICE=$1

fi

if ps aux |grep $SERVICE | grep -v grep | grep -v servicemon
then
    echo all good
else
    echo \$SERVICE could not be found as a process
    echo Make sure that \$SERVICE is running and try again
    echo 'The command ps aux|grep $SERVICE should show the servicd up and running.'
    exit 4
fi

# monitor $SERVICE
while ps aux | grep $SERVICE | grep -v grep | grep -v servicemon
do
  sleep 10
done

service $SERVICE start
logger servicemon; $SERVICE restarted
mail -s "servicemon: $SERVICE restarted at $(data +%d-%m-%Y %H:%M)" root < .
