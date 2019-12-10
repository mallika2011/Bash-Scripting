# Bash-Scripting

Bash scripts written for a set of 6 tasks. A brief explanation of each task is provided below.

## Setup

```bash
git clone https://github.com/mallika2011/Bash-Scripting.git
cd Bash-Scripting
```

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
