# Bash-Scripting

Bash scripts written for a set of 6 tasks. A brief explanation of each task is provided below.

## Setup

```bash
git clone https://github.com/mallika2011/Bash-Scripting.git
cd Bash-Scripting
```

**All necessary files (supporting files apart from the bash scripts) for each task are present in their respective directories.**

## Components

### Music Diary

* To create a document and supporting commands to store songs/music.

* The script supports: Add, Edit, Delete, ViewAll, Filter

RUN :

```bash
cd music_diary
chmod +x menu.sh
./menu.sh
```

### Search Engine

* To count the the number of times a given string occurs in the source of a web page.

* The script is not case sensitive.

RUN :

```bash
cd search_engine
chmod +x searching.sh
./searching.sh   <word>  <url>
```

### Work Timer

* As popular time management technique this task uses a timer to break down work into intervals followed by a small break.

* Takes a command line argument for the number of iterations (work + break).

* Print notifications about the breaks or time to work on the terminal.

* Every 4 iterations, include a longer break.

* Prints notification when all the cycles are complete.

RUN :

```bash
cd work_timer
chmod +x timer.sh
./timer.sh <number of iterations> <worktime> <shortbreak> <longbreak>
```

### Reminder Manager

* To create a reminder script that allows you to send reminders as desktop notifications.

* The script supports: create, edit, list and delete.

* All reminders are stored in a delimited file(s).

RUN :

```bash
cd reminder_manager
chmod +x menu.sh
./menu.sh
```

### File Manipulation

This task has two subtasks :

#### SCRIPT1

* To recursively​ print the last modified date and time and the file name of the all the files in the current working directory in a given format.

* Finds all the commands that starts the word “lo” and stores the commands and their small descriptions in a file named 2018101041.txt

* Displays the number of lines and the length of the longest line in the above created File.

* Replaces all the occurrences of the word “function” with “method” in the above file. In addition, creates a backup of your original file.

RUN :

```bash
cd file_man
chmod +x script1.sh
./script1.sh
```

#### SCRIPT2

* The output of an adult income census contains 2 csv files named file1.csv and file2.csv.

* Script2 concatenates these 2 files into a single file named target_file.csv

* It also creates a header file named header.csv which will contain:
    "Age,workclass,fnlwgt,education,education-num,marital-status,occupation,relationship,race,sex, capital-gain,capital-loss,hours-per-week,native-country,class".   This header file is added at the beginning of the target_file.csv.

* The target_file.csv contains some missing values denoted by ‘?’, these missing values are replaced with 2018101041.

RUN :

```bash
cd file_man
chmod +x script2.sh
./script2.sh
```

### Movie Filter

* To sort all the movies as per their IMDB ratings & put them in different folders.

* Creates 4 folders at <all_movies_folder_path> : Bad, Average, Good, Awesome.

* For all the movies present in <all_movies_folder_path>, the script finds their imdb ratings from <movies_rating_file_path> (i.e. Using file ‘movies_input’). 

* It then creates empty movie files in any one of the 4 folders according to the following rule:
  * If the rating < 5 : Bad
  * If rating is >=5 and <8 : Average
  * If rating >= 8 and <9 : Good
  * If rating >= 9 : Awesome

* The assumptions made are - the empty movie files will be named as as <movie_name>.mp4 and the name of the movies will be a single word.

RUN :

```bash
cd movie_filter
chmod +x filter.sh
./filter.sh <full path to movies_input_file> <full path to all_movies_folder>
```
