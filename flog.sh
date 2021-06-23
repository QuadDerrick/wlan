#!/bin/bash

#  ########  ##        ########    #####
#  ##        ##        ##    ##   ##   ##
#  ##        ##        ##    ##  ##
#  ########  ##        ##    ##  ##    ##
#  ##        ##        ##    ##  ##    ##
#  ##        ##        ##    ##   ##  # #
#  ##        ########  ########    #### #
# v1.1

MAC="34:BA:9A:74:6D:F1"
FILE0=2021jun-01.csv
FILE1=file1
FILE2=file2

# loopydobidubidubdubdub
# loopdyloopdydubbiyeyyeah

while :
do
cat $FILE0 | grep -m1 $MAC | cut -d, -f1,11 > file1
sleep 240
cat $FILE0 | grep -m1 $MAC | cut -d, -f1,11 > file2

if cmp --silent -- "$FILE1" "$FILE2"; then
  echo "files contents are identical"
  echo "doing nothing."
else
  echo "files differ"
  echo "writing log entry"
  cat $FILE0 | grep -m1 "34:BA:9A:74:6D:F1" | cut -d, -f3,11 >> log.txt
fi

	echo "Press [CTRL+C] to stop.."
sleep 1
done
