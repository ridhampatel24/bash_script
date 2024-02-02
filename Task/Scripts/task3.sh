#!/bin/bash

#Install a software package using the package manager of your Linux distribution. Document the process, including any dependencies resolved during installation.

command=/usr/bin/htop

if [ -f  $command ]
then
    echo "$command is Available"
else
    echo "$command is Not Available"
    sudo apt update >> test.txt && sudo apt install -y htop >> test.txt
fi
#sudo apt-get remove htop 
$command



