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

---
## 📚 References (APA7)
OverTheWire Community. (2024). *Bandit wargame: Learning the Linux command line*. OverTheWire. https://overthewire.org/wargames/bandit/
