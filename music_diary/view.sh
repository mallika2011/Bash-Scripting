#!/usr/bin/env bash

echo "_________________________________________________"

echo "Choose an option: "
echo "1.Artist"
echo "2.Genre"
echo "3.Year"

read op

if (($op==1)); then
  read -p "Enter artist: " artist
  #echo $artist
  awk -F "\"*,\"*" -v artist="$artist" '{ if($3==artist) {print}}' music.csv | column -s, -t

elif (($op==2)); then
read -p "Enter Genre: " genre
awk -F "\"*,\"*" -v genre="$genre" '{ if($4==genre) {print}}' music.csv | column -s, -t

else
  read -p "Enter year: " year
  awk -F "\"*,\"*" -v year="$year" '{ if($6==year) {print}}' music.csv | column -s, -t

fi
