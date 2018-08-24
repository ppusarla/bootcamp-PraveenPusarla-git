#!/bin/bash
DATE=$(date +%d-%m-%y)
echo the day ois ${DATE%%-*}
MONTH=${DATE%-*}
echo the month is ${MONTH#*-}
echo the year is ${YEAR##*-}

