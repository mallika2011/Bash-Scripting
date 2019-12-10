#!/usr/bin/env bash

read -p "Enter id to be deleted: " id
#cat temp
if cat temp | grep -wq $id
then
  n=$(grep -nwr $id temp | cut -d':' -f1)
  n=$((n-1))

  del=$(awk -F' ' -v n="$n" 'NR==n {print $2}' temp)
  #echo $del

  if atq | grep -wq $del
  then
    atrm $del
    echo "Reminder Deleted"

  else
    echo "This job has been completed."
  fi

  sed -i -e /^$id/d rem.txt

else
  echo "ERROR! ID not found"
fi
