#!/bin/bash

apiToken=$1;

echo "# info fetched from discogs at $(date)" > data.txt
for y in $(seq 1963 2020); do
	node fetch-data.js "$apiToken" "$y" >> data.txt
done 
