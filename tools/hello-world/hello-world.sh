#!/bin/bash
USERNAME=$(whoami) 
DATE=$(date +%d-%m-%Y) 
TIME=$(date +%R)
echo -e "Hello $USERNAME!\nToday Date is $DATE\nCurrent Time $TIME\nThis shell script running by $(readlink /proc/$$/exe | grep -E -o "[^/]+$")"


