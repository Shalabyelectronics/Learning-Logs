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

## 🛠️ Level 9 -> 10
* **Goal:** Extract the password from a binary file where it appears as human-readable text near "=" signs
* **Learned:**
    - strings extracts human-readable text from binary files
    - strings -a scans the entire file including all sections
    - Combining strings | grep is a classic pattern for binary analysis
    - Reading --help before using a new command is the right habit
* **Command:** `strings -a data.txt | grep "= "`

## 🛠️ Level 10 -> 11
* **Goal:** Decode a Base64-encoded file to reveal the password
* **Learned:**
    - Base64 is encoding (not encryption) — reversible by anyone, no key needed
    - base64 -d decodes a Base64 string
    - Simpler is better — one command beats an unnecessary pipeline
* **Command:** `base64 -d data.txt`

## 🛠️ Level 11 -> 12
* **Goal:** Decode ROT13-encoded text to reveal the password
* **Learned:**
    - ROT13 shifts every letter 13 positions (encoding, not encryption)
    - tr translates characters from one set to another
    - The file command can identify unknown file types
    - Gibberish that looks like English is often ROT13
* **Command:** `cat data.txt | tr 'A-Za-z' 'N-ZA-Mn-za-m'`

## 🛠️ Level 12 -> 13
* **Goal:** Decompress a file that has been compressed multiple times using different formats
* **Learned:**
    - xxd -r converts hexdump back to binary
    - file identifies any file type regardless of extension
    - gunzip for .gz, bunzip2 for .bz2, tar xf for tar archives
    - mktemp -d creates a safe temporary working directory
    - Pattern: file → identify → rename → decompress → repeat
* **Command:** `xxd -r data.txt > binary && file binary` (then repeat per layer)


## 🛠️ Level 13 -> 14
* **Goal:** Use an SSH private key to log in as bandit14 without a password
* **Learned:**
    - SSH key authentication uses a private/public key pair instead of passwords
    - Private key files must have chmod 600 or SSH rejects them
    - scp copies files securely between machines without copy-paste corruption
    - Copy-pasting SSH keys corrupts them — always use scp to transfer
* **Command:** `scp -P 2220 bandit13@bandit.labs.overthewire.org:sshkey.private ~/.ssh/bandit14.key && chmod 600 ~/.ssh/bandit14.key`

## 🛠️ Level 14 -> 15
* **Goal:** Submit current password to port 30000 on localhost to get next password
* **Learned:**
    - nc (netcat) opens raw connections to any host and port
    - Ports are like doors on a server — each service listens on a specific one
    - echo "data" | nc host port sends data without timing issues
    - /etc/bandit_pass/bandit14 stores the current user's password
* **Command:** `echo "password" | nc localhost 30000`

## 🛠️ Level 15 -> 16
* **Goal:** Submit password to port 30001 over an SSL-encrypted connection
* **Learned:**
    - openssl s_client opens SSL connections like nc does for plain connections
    - SSL/TLS encrypts the connection — same technology behind HTTPS
    - "read R BLOCK" means the connection is open and waiting for input
    - Self-signed certificates are common in test/dev environments
* **Command:** `openssl s_client -connect localhost:30001`

## 🛠️ Level 16 -> 17
* **Goal:** Find the correct SSL port among 31000-32000, submit password, receive RSA private key
* **Learned:**
    - nmap scans for open ports in a range (-p 31000-32000)
    - nmap -sV detects what service runs on each port
    - openssl s_client -quiet suppresses SSL noise and shows clean output
    - Some levels return an RSA private key instead of a text password
* **Command:** `nmap localhost -p 31000-32000 -sV` then `echo "password" | openssl s_client -connect localhost:31790 -quiet`

## 🛠️ Level 17 -> 18
* **Goal:** Find the one line that changed between two password files
* **Learned:**
    - diff compares two files and shows what changed
    - < means the line from the first file (old)
    - > means the line from the second file (new)
    - 42c42 means line 42 was changed
* **Command:** `diff passwords.old passwords.new`

## 🛠️ Level 18 -> 19
* **Goal:** Read a file from a server that kicks you out immediately on login
* **Learned:**
    - .bashrc runs automatically on every interactive shell start
    - SSH can run a single command without starting a full shell
    - This bypasses .bashrc completely
    - Used in real automation and DevOps scripting
* **Command:** `ssh bandit18@bandit.labs.overthewire.org -p 2220 cat readme`




---
## 📚 References (APA7)
OverTheWire Community. (2024). *Bandit wargame: Learning the Linux command line*. OverTheWire. https://overthewire.org/wargames/bandit/
