#!/bin/bash
file1="/path/to/file/listofIpswithPorts.txt"
file2="/path/to/file/listofips.txt"
while IFS= read -r -u 5 line2; 
do
    while IFS= read -r -u 4 line1
    do    
        IP1=${line1%:*}
        if [[ "$line2" == "$IP1" ]]
        then
        echo $line1 >> IpsLiveWithPort.txt
        break
        fi
    done 4<$file1
done 5<$file2

#Creates a list of live ips with ports included
