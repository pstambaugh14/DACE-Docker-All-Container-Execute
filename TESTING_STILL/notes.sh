#!/bin/bash
# declare an array called array and define 3 vales
#array=( one two three )
#for i in "${array[@]}"
#do
#	echo $i
#done

files=( "/tmp/dckrpsaq.tmp" )

readarray -t a < /tmp/dckrpsaq.tmp

EXECU=( .py .sh .rb .erb )

#Configurations Specific to Executable Files
#echo "Parsing Configuration Data... "
declare -i EXECUNUM
EXECUNUM=$(echo ${#EXECU[@]})

#Creates in I/O temporary array as parsing some of this otherwise is not fun... XD
for element in "${EXECU[@]}"; do
 find . -type f -name "*"$element"" -exec echo {} \; >> /tmp/elements.tmp
done

#While loop to iterate until 'x' which is the total number of executable or non-executable filetypes.
#Once iteration finalizes, the loop breaks.
#This Loop is intended to validate that the conifigured filetypes exist in the host OS before...
#...executing the permissions commands.  This helps expedite the script's runtime processes (time).

i=0
while [ $i -lt "$EXECUNUM" ];
do
  execvar=$(echo ${EXECU["$i"]})
  findvar=$(find . -type f -name "*"$execvar"")
  if [[ $(find . -type f -name "*"$execvar"") ]]; then
  echo "Found $execvar filetypes that will be set to 0775 executable permissions... "
  find . -type f -name "*"$execvar"" -exec chmod 0755 {} \;
  fi
  ((i=i+1))
done



docker ps -aq > /tmp/dckrpsaq.tmp
i=0
while read line 
do
        arr[$i]="$line"
        echo $arr
        i=$((i+1))
done < /tmp/dckrpsaq.tmp