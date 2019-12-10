#!/usr/bin/env bash

if [[ $# -ne 2 ]]; then
  echo "Error: Insufficient arguments: <Usage> ./searching.sh <word> <url>"

else

  string=$1
  url=$2

  #if echo "$2" | grep -q '(https?|ftp|file)://[-A-Z0-9\+&@#/%?=~_|!:,.;]*[-A-Z0-9\+&@#/%=~_|]'; then


  if wget $url >/dev/null 2>&1 ; then
      curl $2 | sed 's/<script>.*<\/script>//g' | sed 's/<style>.*<\/style>//g'|sed "s/<[^>]\+>//g" >>temp

      count=$(cat temp | grep -o "$string" | wc -w)

      echo "$string" "$count"
  else
	    echo "Url : $url doesn't exists.."
   fi


fi
