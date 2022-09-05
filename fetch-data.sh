#!/bin/bash

apiToken=$1;

echo "# info fetched from discogs at $(date)" > data.txt
for y in $(seq 1963 $(($(date +%Y) - 1))); do
	cass=$(node fetch-cass-data.js "$apiToken" "$y")
	all=$(node fetch-all-data.js  "$apiToken" "$y")
	perc=$(echo "scale=10; 100*$cass/$all"|bc)
	echo "$y	$perc" >> data.txt
done 
