#!/bin/bash
#
BLAH=rabarrabarrrabarbabr
clear

echo BLAH is $BLAH
echo 'the result of ##*ba is' ${BLAH##*ba}
echo 'the result of #*ba is ' ${BLAH#*ba}
echo 'the result of %%ba* is ' ${BLAH%%ba*}
echo 'the result of %ba* is' ${BLAH%ba*}

