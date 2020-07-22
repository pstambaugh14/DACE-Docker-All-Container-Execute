#/bin/bash

#network_diagnosis for Docker script to help with overall troubleshooting/diagnosis.  

#Will be heavily utilizing: docker run -it --net container:<containername>  nicolaka/netshoot from 'https://github.com/nicolaka/netshoot'


#Checking Some Network Stuffs
docker run -itd --network=alpinegit --entrypoint "/usr/bin/top" -it alpine/git
echo "Grab a beer, this is gonna be 5 seconds..."
sleep 5 
docker run -itd --network=alpinegit --entrypoint "/usr/bin/top" -it alpine/git
#docker run -itd --network=alpinegit --entrypoint "/bin/sh -c 'ping googl.com'" -i  alpine/git


docker ps -aq --filter status=running> /tmp/dckrpsaq.tmp

i=0
while read line 
do
	arr[$i]="$line"
	#Print the container that is currently being executed into.  
	termtitle=`docker exec -t "${line}" /bin/sh -c 'cat /etc/hostname'`
	#Checking to see some manual stuff via busybox
	gnome-terminal  --tab -e "bash -c 'docker attach "${line}"; bash'"
	#gnome-terminal --tab docker attach "${line}"
	#Still attempting to get this working
	#docker run -it --rm --network container:"${line}" -a stdout nicolaka/netshoot #from 'https://github.com/nicolaka/netshoot'
	i=$((i+1))
done < /tmp/dckrpsaq.tmp

rm -f /tmp/dckrpsaq.tmp


#STEPS TO TAKE:
# 1) Create User-Defined Network - CHECK

# 2) Get all of the correct containers on that network - CHECK
# 3) Use network 'attach command' to get into containers - 
# 4) See if I can --net container
#docker run -it --rm --network container:<container_name> nicolaka/netshoot