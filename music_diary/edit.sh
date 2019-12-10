#!/usr/bin/env bash


echo "_________________________________________________"
read -p "ID to be editted: " id

if awk -F "\"*,\"*" '{print $1}' music.csv | grep -wq  "$id"
then
  echo "----------------------------------------------------"
  echo "Choose a field to be editted"
  echo "1.Song name"
  echo "2.Artist"
  echo "3.Genre"
  echo "4.Link"
  echo "5.Year"

  read op

  if (($op==1))
    then
      n=0;
      echo "----------------------------------------"

      old=$(awk -F "\"*,\"*" -v id="$id" '{if ($1==id) {print $2}}' music.csv)
      echo "Updated name: "
      read new

       while IFS="\n" read p
      do
        ((n++))
        i=$(echo $p | cut -d',' -f1)
        if [[ $i -eq $id ]];
        then
          line=$(($n))
          else
          z=1
        fi
    done < music.csv
    sed -i "${line}s/$old/$new/" music.csv

      elif (($op==2))
      then
        echo "----------------------------------------"
        old=$(awk -F "\"*,\"*" -v id="$id" '{if ($1==id) {print $3}}' music.csv)

        echo "Updated artist: "
        read new

        while IFS="\n" read p
       do
         ((n++))
         i=$(echo $p | cut -d',' -f1)
         if [[ $i -eq $id ]];
         then
           line=$(($n))
           else
           z=1
         fi
     done < music.csv
     sed -i "${line}s/$old/$new/" music.csv

      elif (($op==3))
      then
        echo "----------------------------------------"
        old=$(awk -F "\"*,\"*" -v id="$id" '{if ($1==id) {print $4}}' music.csv)

        echo "Updated Genre"
        read new
        while IFS="\n" read p
       do
         ((n++))
         i=$(echo $p | cut -d',' -f1)
         if [[ $i -eq $id ]];
         then
           line=$(($n))
           else
           z=1
         fi
     done < music.csv
     sed -i "${line}s/$old/$new/" music.csv

      elif (($op==4))
      then
        echo "----------------------------------------"
        old=$(awk -F "\"*,\"*" -v id="$id" '{if ($1==id) {print $5}}' music.csv)

        echo "Updated Link: "
        read new
        while IFS="\n" read p
       do
         ((n++))
         i=$(echo $p | cut -d',' -f1)
         if [[ $i -eq $id ]];
         then
           line=$(($n))
           else
           z=1
         fi
     done < music.csv
     sed -i "${line}s/$old/$new/" music.csv

      elif (($op==5))
      then
        echo "----------------------------------------"
        old=$(awk -F "\"*,\"*" -v id="$id" '{if ($1==id) {print $6}}' music.csv)

        echo "Updated year: "
        read new
        while IFS="\n" read p
       do
         ((n++))
         i=$(echo $p | cut -d',' -f1)
         if [[ $i -eq $id ]];
         then
           line=$(($n))
           else
           z=1
         fi
     done < music.csv
     sed -i "${line}s/$old/$new/" music.csv
      else
        echo "Error!"
      fi

    else
      echo "ID not found!"

fi
