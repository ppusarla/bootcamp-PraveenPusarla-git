#!/bin/bash
#Script to extract the given string

USER=cn=lara,dc=example,dc=com

USER=${USER%%,*}

USER=${USER#*=}

USER=$(echo $USER | tr [:lower:] [:upper:])

echo the username is $USER
