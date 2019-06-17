#!/usr/bin/env bash

#https://stackoverflow.com/questions/2388488/select-a-random-item-from-an-array
expressions=($(genact --list-modules|grep "^ "|awk '{print $1}'))
RANDOM=$$$(date +%s)

while true;
do
    selectedexpression=${expressions[$RANDOM % ${#expressions[@]} ]}
    /usr/local/bin/genact -e 0h1min -m $selectedexpression
done
