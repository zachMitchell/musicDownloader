#!/usr/bin/python

#Made by Zachary Mitchell in 2019!
"""Query radio stations by name from a .m3u file. If you know part of the title set in your playlist file (first argument)
The file will be search for that phrase (second argument). If it finds anything, it will return the link to that station.
"""
import sys,re

#Look at args:
try:
    fileSrc = sys.argv[1]
except IndexError:
    print "\033[0;31mPlease specify the path for the .m3u file\033[0;0m"
    exit()
key = ''
if len(sys.argv) > 2:
    key = sys.argv[2]

targetFile = open(fileSrc)

foundUrl = False

for line in targetFile:
    if foundUrl:
        print(line)
        break
    elif(re.search('#EXTINF',line) and re.search(key,line)):
        foundUrl = True