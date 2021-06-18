#!/bin/bash
#echo $TEST

#today=$(date -u +"%Y_%m_%d".md)
path=./
week=$(date -u +"%YW%W".md)
#day=$(date -u +"%A")
#date -d "$date -1 days" +"%Y%m%d"
#echo $day
#perl -0777 -pe 's/(${day}\n.*)^\- \[.\] (.*Alc)/\1\n\- [x] \2/sm' $path$week
day=$(date +'%e')
day=($day*6-3+20)
#cat  $path$week \
    #| grep '| Quit Alc' \
    #| perl -pne 'substr($_, '"$day"', 1, "x")'

    perl -pne '($_, '"$day"', 1, "-")' $path$week
