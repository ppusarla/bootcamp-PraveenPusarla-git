#!/bin/bash

while sleep 60
do

  USAGE=`ps -eo pcpu,pid -o comm= | sort -k1 -n -r |head -l |awk `{ print $1 }'`
  USAGE=${USAGE%.*}
  PID=`ps -eo pcpu,pid -o comm=| sort -k1 -n -r|head -1 |awk '{print $2}'`
  PNAME=`ps -eo pcpu,pid -0 comm=|sort -k1 -n -r|head -1 |awk '{print $3}'`

  if [$USAGE -gt 80 ]
  then
    
      USAGE1=$USAGE
      PID1=$PID
      PNAME1=$PNAME
      sleep 7
      USAGE2=`ps -eo pcpu,pid -o comm= | sort -k1 -n -r|head -1|awk '{print $1}'`
      USAGE2=${USAGE2%.*}
      PID2=`ps -eo pcpu,pid -o comm=|sort -k1 -n -r|head -1|awk '{print $2}'`
      PNAME2=`ps -eo pcpu,pid -o comm=| sort -k1 -n -r |head -1|awk '{print $3}'`

