#!/bin/bash

#Made by Zachary Mitchell in 2019!
#This tiny script is for my server. Whenever I want to listen to internet radio on the fly,
    #a station can be dumped to a file, and be moved to my phone when I don't have wifi :)
#Stations themselves are retrieved through an .m3u file. (See python script below for more info)
url=$(./getM3uUrlByTitle.py $1 $2);

sleepTime=1800;
if [ $3 ]; then sleepTime=$3;fi

outName=out;
if [ $4 ]; then outName=$4;fi

if [ $url ]; then wget -O $outName.mpeg $url -q&
sleep $sleepTime && kill $(jobs -p);
fi