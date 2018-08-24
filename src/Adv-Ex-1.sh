#!/bin/bash

cp /var/log/messages /var/log/messages.old
cat /dev/null > /var/log/messages
echo log file copied and cleaned up

exit 0
