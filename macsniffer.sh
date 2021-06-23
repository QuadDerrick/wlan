#!/bin/bash

MAC="$1"
FILE="$2"
MP3="$3"

if [ "$#" -eq  "0" ]
  then
     echo "MacSniffer 3.0"
     echo "No arguments supplied"
     echo "Usage = $0 MAC Logfile.csv song.mp3"
else

while : ;do
    [[ -f "$FILE" ]] && grep -q "$MAC" "$FILE" && mpg123 "$MP3" && break
    clear
    echo "MacSniffer 2.0 by Derrick Syntax & Sotulf"
    echo "noting found, clearing screen and sleeping 3 seconds"
    sleep 3
done

fi
