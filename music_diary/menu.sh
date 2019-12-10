#!/usr/bin/env bash


chmod +x add.sh del.sh edit.sh view.sh viewall.sh
echo
echo "*********** WELCOME TO YOUR SONG DIARY ************"
echo
echo "Choose an option: "
echo "1.Add entry"
echo "2.Edit entry"
echo "3.Delete entry"
echo "4.View all entries"
echo "5.View specific entries"
echo

read op

if (($op==1))
  then ./add.sh
elif (($op==2))
  then ./edit.sh
elif (($op==3))
  then ./del.sh
elif (($op==4))
  then ./viewall.sh
elif (($op==5))
  then ./view.sh

fi
