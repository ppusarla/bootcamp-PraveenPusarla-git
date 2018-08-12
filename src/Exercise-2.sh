#!/bin/bash
# Exercise 2 from https://www.safaribooksonline.com/videos/learning-path-bash/9780134656045/9780134656045-BSHF_02_12

if [ -z $1 ]
then
   echo provide filenames
   read $FILENAMES
else
   FILENAMES="$@"
fi

echo the following filenames have provided: $FILENAMES
for i in $FILENAMES
do
  cp $i $HOME

done
