#!/bin/bash
rm $HOME/jwst_im/img.jpg
rm $HOME/jwst_im/img1.jpg
osascript -e 'tell application "Finder" to set desktop picture to POSIX file "/Users/mmaclay/jwst_im/webb/webb.jpg"'
sleep 20s
for i in `seq 1 100`;
    do
		curl "http://www.jwst.nasa.gov/WebbCamWide/CLNRMR-800px.jpg?1471471577817" > /Users/mmaclay/jwst_im/img.jpg
		osascript -e 'tell application "Finder" to set desktop picture to POSIX file "/Users/mmaclay/jwst_im/img.jpg"'
		rm $HOME/jwst_im/img1.jpg
		sleep 62s      
		curl "http://www.jwst.nasa.gov/WebbCamWide/CLNRMR-800px.jpg?1471471577817" > $HOME/jwst_im/img1.jpg       
		osascript -e 'tell application "Finder" to set desktop picture to POSIX file "/Users/mmaclay/jwst_im/img1.jpg"'
		rm $HOME/jwst_im/img.jpg
		sleep 62s    
    done