#!/bin/bash
#Extract the value of cn in the ldif file and create the user with the extracted value.

for i in $(cat ldif)
do 
    USER=${i%%,*}
    USER=${USER#*=}
    echo $USER >> users
done

#show that user creation will work
for j in $(cat users)
do
     echo useradd $j
done
exit 0

