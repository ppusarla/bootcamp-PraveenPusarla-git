#!/bin/bash

if [ -z $1 ]
then 
     echo provide filenames
     read $FILENAMES

else
    
     FILENAMES="$@"

fi

echo the following filenames have been provided: $FILENAMES
fir i in $FILENAMES
do
  cp $1 HOME
done

