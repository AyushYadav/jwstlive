#!/bin/bash
rm /Users/mmaclay/jwst_im/img.jpg
rm /Users/mmaclay/jwst_im/img1.jpg
export live_pid = $!
./Users/mmaclay/jwst_im/terminate.sh
osascript -e 'tell application "Finder" to set desktop picture to POSIX file "/Users/mmaclay/jwst_im/webb/webb.jpg"'
sleep 20s
for i in `seq 1 2`;
    do
		curl "http://www.jwst.nasa.gov/WebbCamWide/CLNRMR.jpg?1471632928081" > $HOME/jwst_im/img.jpg
		osascript -e 'tell application "Finder" to set desktop picture to POSIX file "$HOME/jwst_im/img.jpg"'
		rm $HOME/jwst_im/img1.jpg
		sleep 62s      
		curl "http://www.jwst.nasa.gov/WebbCamWide/CLNRMR.jpg?1471632928081" > $HOME/jwst_im/img1.jpg       
		osascript -e 'tell application "Finder" to set desktop picture to POSIX file "$HOME/jwst_im/img1.jpg"'
		rm /Users/mmaclay/jwst_im/img.jpg
		sleep 62s    
    done
