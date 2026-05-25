#!/bin/bash
USERNAME=$(whoami)
DATE=$(date +%d-%m-%Y)
TIME=$(date +%R)
echo "Hello, $USERNAME! Welcome to shell scripting."
echo "Current date $DATE and time $TIME"
echo "This script running by $(ps -q $(echo $$) -o comm=) "


