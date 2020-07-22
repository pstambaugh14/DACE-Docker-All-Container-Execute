#!/bin/bash
docker ps -aq > /tmp/dckrpsaq.tmp
i=0
while read line 
do
        #arr[$i]="$line"
        arr[$i]=line
        echo "$(echo ${#arr[$i]}) is arr plus line vars numbered []"
        echo "$line is line var" #returned: b0bee495aa9d is line var, c726eb19fc12 is line var
        echo "${arr} is arr var" #returned: b0bee495aa9d is arr var, b0bee495aa9d is arr var
        echo "${arr[@]} is arr @"
        echo "$i is i var" #returned: 0 is i var, 1 is i var
        i=$((i+1))
done < /tmp/dckrpsaq.tmp

#b0bee495aa9d is line var
#b0bee495aa9d is arr var
#0 is i var
#c726eb19fc12 is line var
#b0bee495aa9d is arr var
#1 is i var
