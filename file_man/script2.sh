#!/usr/bin/env bash


cat *.csv >> target_file.csv

touch header.csv

echo "Index, Age, workclass, fnlwgt, education, education-num, marital-status, occupation, relationship, race, sex, capital-gain, capital-loss, native-country, class" >> header.csv

cat header.csv target_file.csv >> temp.csv

mv temp.csv target_file.csv

sed -i -e s/"?"/"2018101041"/g target_file.csv
