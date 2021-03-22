#!bin/bash
perl -i -pe "s/SCHEDULED: <`date -d "yesterday" '+%Y-%m-%d %a'`/SCHEDULED: <`date '+%Y-%m-%d %a'`/g" ~/org/pages/*.org
