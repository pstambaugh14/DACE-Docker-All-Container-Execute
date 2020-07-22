#!/bin/bash
#docker run -t -d alpine/git
#docker run --entrypoint "/bin/sh" -it alpine/git

#BEST
docker run -itd --network=alpinegit --entrypoint "/bin/sh" -it --rm alpine/git

###TESTING2###
#docker run -itd --network=alpinegit --entrypoint "/usr/bin/top" -it --rm alpine/git


#TESTING
#docker run -itd --network=alpinegit -it --rm alpine /bin/sh


#NEEDS TINKERING***
#echo "test" | docker run --network=alpinegit --entrypoint "/bin/sh" -a stdin -i alpine/git -
