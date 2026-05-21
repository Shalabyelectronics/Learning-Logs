#!/bin/bash
header="===== System Report =====";
footer="=========================";
currentuser=$(whoami)
currentdate=$(date)
currentpwd=$(pwd)
runningtime=$(uptime)
freediskspace=$(df -h / | tail -1 | awk '{print $4}')
largestfile=$(du -h | sort -rh | head -3)

echo -e "$header\nUser  : $currentuser\nCurrent date  : $currentdate\nCurrent directory  : $currentpwd\nUptime  :$runningtime\nRemainig disk space  : $freediskspace\nLargest files  : $largestfile\n$footer\n"

