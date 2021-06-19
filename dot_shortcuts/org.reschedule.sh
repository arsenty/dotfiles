#!bin/sh
#0 0 * * * sh $HOME/.shortcuts/org.reschedule.sh
if [ "$(uname)" = "Darwin" ];
then
    yesterday='-v -1d'
else
    yesterday='-d yesterday'
fi
perl -i -pe "s/SCHEDULED: <`date $yesterday '+%Y-%m-%d %a'`/SCHEDULED: <`date '+%Y-%m-%d %a'`/g" $HOME/org/habit*
