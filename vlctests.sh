#!/bin/bash

#vlc -vvv :sout=#transcode{vcodec=h264,vb=1024,acodec=mp3,ab=192}:standard{mux=ts,access=file{no-overwrite},dst=/Users/chrisgrimmett/Downloads/test2.mpg}


#vlc -vvv fd://0 --sout '#transcode{vcodec=mp4v,acodec=mpga,vb=800,ab=128,deinterlace}:
#rtp{mux=ts,dst=192.168.1.200,port=5004,sdp=sap://,name="TestStream"}'

open -n /Applications/VLC.app --args -vvv fd://0 --sout '#transcode{vcodec=mp4v,acodec=mpga,vb=800,ab=128,deinterlace}:standard{access=http,mux=ts,dst=192.168.1.200:8000/live}'