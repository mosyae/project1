#!/bin/bash
#add fix to exercise1 here
# The problem is that curl is not installed on the server. So it should be isntalled. Here is the command
#sudo apt-get -y update
echo 'fix1: Installing curl...'
sudo apt-get -y install curl
# After that I found that there is no access to the www.textfiles.com server (no ping to the server), so I checked routing table an found that there is incorrect routing to the server's network
sudo ip route del 208.86.224.90 dev eth0