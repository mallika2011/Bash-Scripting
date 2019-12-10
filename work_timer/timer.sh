#!/usr/bin/env bash


#echo $1

if [[ $# -ne 4 ]];
then echo "Error: Insufficient Arguments:  <Usage> : ./timer.sh <number of iterations> <worktime> <shortbreak> <longbreak> "

else
    for ((i=1; $i<=$1; i++))
    do


       echo  "$i Work"
       sleep $2

       if (($i%4==0)); then
       echo  "$i Break"
       sleep $4
     else
        echo "$i Break"
        sleep $3
      fi


    done
    #sleep 30
    #echo ""
echo Finished
fi
