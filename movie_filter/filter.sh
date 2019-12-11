#!/usr/bin/env bash

if [[ $# -ne 2 ]]; then
  echo "Error: Insufficient number of arguments : <Usage>  ./filter.sh <path to movies_input>  <path to all_movies_folder>" 
else
  var=100
  rating=$1
  movies=$2

#  echo $rating
#  echo $movies

  mkdir $movies
  cd $movies

  mkdir $movies/bad $movies/average $movies/good $movies/awesome

  while IFS="" read -r p
  do
    #echo $p
    rat=$(echo $p | cut -d ':' -f2)
    mov=$(echo $p | cut -d ':' -f1)
    #rat=$(echo $rat |bc -l)
    #echo $rat

    if (( $(echo "$rat < 5" | bc -l) ));
    then
      touch $movies/bad/$mov.mp4

    elif (( $(echo "$rat>=5 && $rat < 8" | bc -l) ));
    then
      touch $movies/average/$mov.mp4
    elif (( $(echo "$rat>=8 && $rat < 9"| bc -l) ));
    then
      touch $movies/good/$mov.mp4
    elif (( $(echo "$rat>=9" |  bc -l) ));
    then
      touch $movies/awesome/$mov.mp4
    fi



  done <$rating

fi
