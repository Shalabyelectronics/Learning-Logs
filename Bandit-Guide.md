# 🚩 Bandit Wargame - Learning Log
This file tracks my progress and technical solutions for the OverTheWire Bandit challenges.

## 👤 Identity Card
* **Student:** Mohamed Tareq Shalaby
* **Focus:** Data Analysis & Web Development
* **Platform:** WSL Ubuntu & Termux

---

## 🛠️ Level 0 -> 1
* **Goal:** Connect to the server and read the first password.
* **Key Command:** `ssh bandit0@bandit.labs.overthewire.org -p 2220`.
* **File Found:** `readme`.
* **Learned:** Basic SSH connection and using `cat` to read files.

## 🛠️ Level 1 -> 2
* **Goal:** Read a file named `-`.
* **Challenge:** The terminal treats `-` as a command option.
* **Solution:** Use the relative path `./-`.
* **Command:** `cat ./-`.

## 🛠️ Level 2 -> 3
* **Goal:** Read a file with spaces and dashes in its name.
* **File Name:** `--spaces in this filename--`.
* **Solution:** Wrap the name in quotes and use the relative path to avoid the dash-option error.
* **Command:** `cat "./--spaces in this filename--"`.

## 🛠️ Level 3 -> 4
* **Goal:** Read a hidden file inside a directory.
* **Challenge:** Files starting with `.` are hidden and don't show with a normal `ls`.
* **Solution:** Used `ls -la` to reveal hidden files and `cat` with the exact name (including dots).
* **Command:** `cat ./...Hiding-From-You`.

## 🛠️ Level 4 -> 5
* **Goal:** Identify the only human-readable file among multiple binary files.
* **Challenge:** Multiple files starting with `-` containing garbled data.
* **Solution:** Used the `file` command to scan all files and identify the one with "ASCII text" encoding.
* **Command:** `file ./*` then `cat ./-file07`.

## 🛠️ Level 5 -> 6
* **Goal:** Find a specific file based on multiple criteria (size, type, and properties).
* **Challenge:** Searching through dozens of directories and hundreds of files manually is impossible.
* **Solution:** Used advanced `find` command with multiple filters (size, type, and logical negation).
* **Command:** `find . -type f -size 1033c ! -executable` then `cat ./maybehere07/.file2`.

## 🛠️ Level 6 -> 7
* **Goal:** Find a file hidden somewhere in the entire server based on owner and group.
* **Learned:** 
    - Using `/` to search from the system root.
    - Handling permission errors using `2>/dev/null` (Redirecting stderr to the null device).
    - Filtering by `-user` and `-group`.
* **Command:** `find / -user bandit7 -group bandit6 -size 33c 2>/dev/null`.

## 🛠️ Level 7 -> 8
* **Goal:** Find the password stored next to the word "millionth" in data.txt
* **Learned:**
    - grep is enough when you already know the file location
    - find is for unknown file locations, grep is for unknown content locations
    - Large files are no obstacle with the right search tool
* **Command:** `grep -i "millionth" data.txt`

## 🛠️ Level 8 -> 9
* **Goal:** Find the only line that appears once in data.txt (all others are duplicates)
* **Learned:**
    - uniq only works correctly after sort (must group duplicates first)
    - uniq -u filters to lines appearing exactly once
    - sort | uniq is a classic pipeline combination
* **Command:** `sort data.txt | uniq -u`

---
## 📚 References (APA7)
OverTheWire Community. (2024). *Bandit wargame: Learning the Linux command line*. OverTheWire. https://overthewire.org/wargames/bandit/
