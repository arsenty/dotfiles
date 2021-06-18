#!/bin/bash
F="/Users/arsenty/Documents/2021/journals/`date +%Y_%m_%d`.md"
#echo "## `date +%H:%M` {query}" >> /Users/arsenty/Documents/2021/journals/`date +%Y_%m_%d`.md

if [[ -s "$F" && -z "$(tail -c 1 "$F")" ]]
then
    #echo "Newline at end of file!" >> $F
	echo "# `date +%H:%M` $1" >> $F
else
    #echo "No newline at end of file!" >> $F
	echo "" >> $F
	echo "# `date +%H:%M` $1" >> $F
fi

#sh ~/.shortcuts/org.sync.sh
