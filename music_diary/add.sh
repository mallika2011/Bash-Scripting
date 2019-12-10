#!/usr/bin/env bash

if [[ -e music.csv ]];
then
    echo
else
    echo
    echo "Creating file..."
    echo
    touch music.csv
fi

echo
echo "----------------------------------------------------"
read -p "Enter number of arguments: " n
echo

for (( i = 0; i < n; i++ )); do

  while [[((-z ${song})) || ((-z ${artist})) || ((-z ${id})) ]]; do
    echo "Please enter the *required* fields."

    if [[ ((-z ${song})) ]]; then
      read -p "Song name: " song
      echo

    elif [[ ((-z ${artist})) ]]; then
    read -p "Artist:    " artist
    echo

    elif [[ ((-z ${id})) ]]; then
    read -p "ID:   " id
    echo

    else
      read -p "Song name: " song
      read -p "Artist:    " artist
      read -p "ID:        " id
      echo

    fi
  done

  if awk -F "\"*,\"*" '{print $1}' music.csv | grep -wq "$id"
  then
    echo "*******************"
    echo "*Error! Duplicate!*"
    echo "*******************"
    echo
  elif awk -F "\"*,\"*" '{print $2}' music.csv | grep -wq "$song"
  then
    echo "*******************"
    echo "*Error! Duplicate!*"
    echo "*******************"
    echo
  else

  read -p "Genre: " genre
  read -p "Link : " link
  read -p "Year : " year

  if [ -z "$genre" ]
then
      genre=" "
fi

if [ -z "$link" ]
then
    link=" "
fi

if [ -z "$year" ]
then
    year=" "
fi

  echo "-----------------------------------------------------------"

  echo $id","$song","$artist","$genre","$link","$year>>music.csv


fi
song=""
artist=""
id=""

done
