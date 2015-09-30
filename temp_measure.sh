#!/bin/bash

timestamp=`date +%F_%H-%M-%S`
echo "Temperature Log - $(date)" >temperature_log_$timestamp.txt
# 5040 for 1 week with 5 mins intervals
# 720 for 1 day with 1 min intervals
for i in {1..720}
do
    temp=`/opt/vc/bin/vcgencmd measure_temp`
    temp=${temp:5:16}
    echo $temp >>temperature_log_$timestamp.txt
    sleep 300
done

git add temperature_log_$timestamp.txt

git commit -a -m $timestamp

git push master origin
