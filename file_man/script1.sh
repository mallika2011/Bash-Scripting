#!/usr/bin/env bash

#PART 1-------------------------------------------------------------------------
touch 2018101041.txt
touch backup.txt
find $1 -type f -exec stat --format '%Y :%y %n' "{}" \; | sort -nr | cut -d: -f2- >>temp.txt

while IFS= read line
do
        # display $line or do somthing with $line
	#echo "$line"
  #echo $line
  file=$(echo "$line"|cut -d' ' -f4)
  #echo $file
  date=$(date -r "$file" +'%m-%d-%Y')
  time=$(date -r "$file" +'%H:%M:%S')

  echo "$date" "$time" "$file"
  echo

done < temp.txt
#rm temp.txt

#PART 2 --------------------------------------------------------------------------

compgen -c | grep "^lo" > temp2.txt

while IFS="\n" read -r p
do
  line=$(echo -n "$p:" ; whatis "$p"|rev|cut -d '-' -f1 |rev)
  echo "$line">> 2018101041.txt

done <temp2.txt

echo

echo "Number of lines: "
wc -l 2018101041.txt | cut -d' ' -f1
echo
echo "Longest line length: "
wc -L 2018101041.txt | cut -d' ' -f1

#PART 3--------------------------------------------------------------------------

sed -i -e s/"function"/"method"/g 2018101041.txt

cp -T 2018101041.txt backup.txt
