#!/usr/bin/env bash
echo "_________________________________________________"
echo "Choose an option of deletion: "
echo "1.Song name"
echo "2.ID"

read op
echo "_________________________________________________"



if (($op==1)); then
  read -p "Enter song: " song
  #echo $song
  if awk -F "\"*,\"*" '{print $2}' music.csv | grep -wq  "$song"
  then
    sed -i "/$song/d" ./music.csv
  else
    echo "Song not found"
  fi

else

  read -p "Enter id:   " id

  if awk -F "\"*,\"*" '{print $1}' music.csv | grep -wq  "$id"
  then
    sed -i "/$id/d" ./music.csv

  else
    echo "ID not found"
  fi
fi
