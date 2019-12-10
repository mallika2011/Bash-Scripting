#!/usr/bin/env bash

#echo $cmd | at $time $date 2>&1 | tail -n 1

read -p "Enter time in 24HR format  " t
read -p "Enter  \"'TITLE' 'BODY'\"    " message

# if [[ $# -ne 2 ]]; then
#   echo "ERROR"
#   echo "Correct format : <TIME> " '<TITLE>' '<BODY>' ""

# else

echo notify-send "$message" | at "$t" &>> temp

if [ -s rem.txt ]
then
        id=$(tail -n1 rem.txt | cut -d',' -f1)
        id=$((id+1))
else
      id=1
fi

echo "$id">>temp
echo "$id","$message",at,"$t" >> rem.txt
# fi
