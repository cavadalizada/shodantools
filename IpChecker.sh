#!/bin/bash
file="/path/to/file/filename.txt"
while IFS= read -r line
do
if ping -c 1 $line &> /dev/null
then
  echo $line >> iplistLive.txt
else
  echo 0
fi
done <"$file"

#checks which ips are live
