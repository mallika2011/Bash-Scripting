#!/usr/bin/env bash

sudo apt-get install at
chmod +x add.sh del.sh edit.sh list.sh listarg.sh
echo
echo "*********** WELCOME TO REMINDER MANAGER ************"
echo
echo "Choose an option: "
echo "1.Add reminder"
echo "2.Edit reminder"
echo "3.Delete reminder"
echo "4.View all reminders"
echo "5.View specific reminders"
echo

read op

if (($op==1))
  then ./add.sh
elif (($op==2))
  then ./edit.sh
elif (($op==3))
  then ./del.sh
elif (($op==4))
  then ./list.sh
elif (($op==5))
  then ./listarg.sh

fi
