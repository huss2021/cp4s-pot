#/bin/bash
# This file will update the date and time on the STIX bundles
# requires the gsed (GNU sed) command to be installed on mac through homebrw
# Jonathan Tomasulo - Cybersecurity Specialist

#currentDate=`date '+%FT%T.000Z'`
futureDate='"last_observed": "2021-09-09T01:55:00.000Z'
currentDate='2021-09-09T00:00:00.000Z'
echo "$currentDate"
gsed -i "s/[0-9][0-9][0-9][0-9]-[0-9][0-9]-[0-9][0-9]T[0-9][0-9]:[0-9][0-9]:[0-9][0-9]\.[0-9][0-9][0-9]Z/$currentDate/g" *.json
gsed -i "s/\"last_observed\": \"[0-9][0-9][0-9][0-9]-[0-9][0-9]-[0-9][0-9]T[0-9][0-9]:[0-9][0-9]:[0-9][0-9]\.[0-9][0-9][0-9]Z/$futureDate/g" *.json
echo "Dates Updated to: $currentDate Successfully"