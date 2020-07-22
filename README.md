# D.A.C.E. - Docker-All-Container-Execute

## pstambaugh14/DACE-Docker-All-Container-Execute

This project is intended to allow the execution of code into all running instances of Docker containers on your docker environment.
It automatically pulls a list of all running containers and then will execute shell commands into each one.

This is useful for many different purposes:

## EXAMPLES:
- Lost/missing source code and trying to find configurations/data in a known container.
- Running commands to pull information in each container.
- Pushing code into each running container for testing purposes before a build.
- Many more ideas.


## Credits

- Please check: https://github.com/pstambaugh14/DACE-Docker-All-Container-Execute

# Overview
- WARNING: This is still in its early Alpha stages so please never run this code in a production environment.  Be careful using this script as it has not been tested nearly enough yet.  Please do not blame me if any data is lost or destroyed.  

# New Goals:
- Continue testing for interactive commands
- Test a whole plethora of commands to get the syntax correct (pipes, chain of different commands, etc.)
- See which commands work and which will not. 
- Create another script to simply gather data/metrics of container(s) in environment. 
- Make a network diagnostic tool to be able to analyze networking issues from each container's node.  This can help expedite the process of network troubleshooting and help with an early diagnosis for overall troubleshooting issues.  

-----------------------------------------------------------------------------------------------------------------------------

# Overall Goal of This Project
To alleviate some administrative hassles and have connection to all running docker containers at once.  

# Credits:
Credits to licenses, person(s) involved (me), due credit to open-source providers or any other contributor.  

## License / Credits
Created by <Patrick Stambaugh>.
https://github.com/pstambaugh14/DACE-Docker-All-Container-Execute
Docker, GitHub, DockerHub, Linux GNU (BASH), and probably many more.

## INSTALL INSTRUCTIONS
```sh
git clone https://github.com/pstambaugh14/DACE-Docker-All-Container-Execute.git
```

## Configuration
Configure the scripts appropriately to modify the shell commands you wish to execute in each Docker container.

For example, read the comments for this line:

```sh
docker exec -t "${line}" /bin/sh -c 'cat /etc/hostname' #Change 'cat /etc/hostname' to change the non-interactive command desired to be run for your command.
```

## Conclusion
Hopefully more to come soon!  Will continue to test and tinker around.  Thanks, enjoy!
