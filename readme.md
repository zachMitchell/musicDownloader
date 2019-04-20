# Music Downloader

Hello! This quick hackjob was made for one personal usecase...

**I love internet radios.** I'm basically that guy that likes music, but doesn't care about the size of a library. Because of this, it's a nice place to listen to music with minimal advertising, low data usage and relaxing music. One thing stands in my way though...

**I hate internet outages** like when I'm walking down the street and celular drops to 0%. Ironically, this would be a nice place to listen to music... but alas :(

## Purpose
**This project is designed to download internet radio stations based on keywords from a playlist**, whether it be a single station, or multiple stations at once. It's extremely light, and makes full use of standard linux commands and python to download the stations you want when you lack internet access.

## Requirements

### Linux & MacOs
* python 2.7* (In other words, you're bascially good to go on most POSIX systems)

### Windows
* MinGW/Git for windows (Set your environment variables to the path where you can launch bash & wget)
* Python 2.7*

### All OS'
* an `m3u` file **(sample provided)** with internet radio stations (AKA, a widnows media playlist file). The file format is compatible with many players, like iTunes and VLC.

*=This can be changed in the python script itself. Change `python` to `python3` and you should be fine.

## Usage
`./downloadSong.sh sourceFile keyword sleepTime name`

* **sourceFile** - your `.m3u` file. Be sure to have the keyword within this file so the script can discover the URL
* **keyword** - (Case sensitive) the hint as to what you want to listen to. Usually a part the name of the station.
* **sleepTime** - (Optional, default 1800) Time *in seconds* for how long you want to record.
* **name** - (Optional, default 'out') the name and path for your recording. `downloadSong.sh` adds `.mp3` to the end of your name; however, you can edit it out of the script if you don't need it. (e.g `./my/downloads/folder/nameOfStation` OR `nameOfStation`)



`./downloadFarm.sh sourceFile sleepTime keyword keyword keyword [...]`

This script makes use of the one above script to download multiple songs at once. `sourceFile` and `sleepTime` work the same way, but script works a little differently:
1. `sleepTime` applies to all recording radio stations
1. All stations are downloaded to the project's `./downloads` folder.
1. the name of each download is based on the keywords you specify.

This makes it faster to get the music you want in a fraction of the time. For example: if you want an hour of music, but only have 15 minutes, you can download 4 stations at once and listen to each one like a playlist!

## Where to go from here
As you've probably noticed, this script is tiny. In fact, this readme is probably larger than the entire project. :P The real power comes when the script is used in different ways, such as creating a client for a phone to query music remotely, scheduling the script on your server to farm your favorite stations, or other things.

The script itself makes a nice boiler-plate for bigger automation or other things. Again, it's really small, so I would highly reccommend making it one of the cogs of any small/large project (Or just using it as-is).