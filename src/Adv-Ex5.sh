#!/bin/bash

#bubble.sh:Bubble sort.

exchange()
{
  local temp=${Countries[$1]}
  Countries[$1]=${Countries[$2]}
  Countries[$2]=$temp

  return

}

declare -a Countries

Countries=(India USA UK Amsterdam)

clear

echo "0:${Countries[*]}"

number_of_elements=${#Countries[@]}

let "comparisons = $number_of_elements - 1"

count=1

while [ "$comparisons" -g 0]
do

  index=0

while ["$index" -lt "$comparisons"]

do

  if [${Countries[$index]} \> ${Countries[`expr $index + 1`]} ]

  then

    exchange $index `expr $index +1 `

  fi
    let "index +=1"

  done

let "comparisons -=1"

echo
echo "$count:${Countries[@]}"
echo
let "count+=1"
done
exit 0





