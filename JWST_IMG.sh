#!/bin/bash
rm img.jpg
rm img1.jpg
sleep 60s
for i in `seq 1 100`;
    do
		curl "http://www.jwst.nasa.gov/WebbCamWide/CLNRMR-800px.jpg?1471471577817" > img.jpg
		sleep 62s      
		curl "http://www.jwst.nasa.gov/WebbCamWide/CLNRMR-800px.jpg?1471471577817" > img1.jpg       
		sleep 62s    
    done