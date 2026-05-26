# Hello World Script
This my first shell script I wrote to learn how to use Linux commands in usefull way.
# What it do?
It just greeting the active user who execute it with the date and time and what application run this script.
# Code Explaination.
```bash
#!/bin/bash <--- Its called shebang and we must add this line of comment but terminal when open it can see which application can run this script.
USERNAME=$(whoami) # <-- This is how we assign value to variable if we want to save the command output vakue to it.
DATE=$(date +%d-%m-%Y) # <-- Same for date and you can pick a format that suit your application.
TIME=$(date +%R)
echo -e "Hello $USERNAME!\nToday Date is $DATE\nCurrent Time $TIME\nThis shell script running by $(readlink /proc/$$/exe | grep -E -o "[^/]+$")"
```
# What did I learn?
- I learnt how to create new shell script.
- How to create variables the we assign their values from a commands.
- I learnt how to change the permission previlage by using `chmod` and I learnt about the letters and numbers that represent them.
# The Hard Part
It was how to embeded a variable in a command and using a grep with a regular expression pattern as you see this below:
`readlink /proc/$$/exe | grep -E -o "[^/]+$"` it sound easy now but belive me I struggeled a lot to figure out all those letters and options but it is really a good practice. By the way you could a chieve the same result by using a baseline command but its good to learn the fun stuff also.
# How to Run this script
You need first to check the permission then change it to make it executable by using `chmod` then type `./hello-world.sh` 

## See you on other amazing shell script tool
