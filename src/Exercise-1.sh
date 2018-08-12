#!/bin/bash
#Script to copy the log files from /var/log content and clear the current
#phdata bootcamp training

cp /var/log/messages /var/log/messages.old

cat /dev/null > /var/log/messages
echo log file copied and cleaned up

exit 0
