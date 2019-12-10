#!/usr/bin/env bash

read -p "Enter ID to be editted " id

if awk -F  " " '{print $1}' rem.txt | grep -wq  "$id"
then



      echo "----------------------------------------"
      echo "Process of editting:"
      echo
      echo "1.Delete"
      echo "2.Add New"
      echo

      ./del.sh
      read -p "Updated reminder <TIME> <BODY>: " t b
      ./add.sh $t $b





    else
      echo "ID not found!"

fi
