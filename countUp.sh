#!/bin/bash

startDate="$(date +%s.%N)" 
while true; do
current="$(date +%s.%N)" 
diff=$(echo "$current-$startDate" |bc)
time="$(date +%T -d @0$diff)" #Pad diff with leading zero
realTime="$(date +%T -d "$time + 3 hour")"
echo $realTime
echo $realTime > $1

done
