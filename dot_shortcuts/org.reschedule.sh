#!bin/bash
if [ "$(uname)" = "Darwin" ];
then
    yesterday='-v -1d'
else
    yesterday='-d yesterday'
fi
perl -i -pe "s/SCHEDULED: <`date $yesterday '+%Y-%m-%d %a'`/SCHEDULED: <`date '+%Y-%m-%d %a'`/g" ~/org/pages/*.org
