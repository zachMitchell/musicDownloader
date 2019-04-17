#!/bin/bash

#Made by Zachary Mitchell in 2019!
#Download in the bulk! same arguments as downloadSong.sh; Only this time, wgets are run all at the same time.

#The first two arguments are required, however, the rest are optional...
#[man, bash makes everything simple XP]

sourceFile=$1
shift;
sleepTime=$1

while [ $1 ]; do
    ./downloadSong.sh $sourceFile $1 $sleepTime ./downloads/$1 & shift;
done