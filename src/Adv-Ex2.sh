#!/bin/bash

NUMBER=0
NUMBER1=0
NUMBER2=1
CORRECT_ANSWER=0
ANSWER=0
CORRECT=0
MAX_TRIES=3

function generate_question(){
    generate_numbers
    determine_operation
    QUESTION="$NUMBER1 $OPERATION $NUMBER2"
}

function generate_number(){
     generate_number
     NUMBER1=$NUMBER
     generate_number
     NUMBER2=$NUMBER
}
function generate_number(){
     NUMBER=$((RANDOM%10+1))
}
