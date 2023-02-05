#!/bin/bash

while true
do
	find . -name "*.ts" -not -path '*/\.grab/*' -not -path '*_dnc/*' -mmin +5 -exec bash -c 'ffmpeg -y -i "$1" -c:v libx265 -b:v 1M -c:a aac -b:a 128k -strict -2 "${1%.ts}.mp4" && rm "$1"' _ {} \;
	echo ""
	echo "Waiting for new files... resting for 5 minutes"
    sleep 5m
done
