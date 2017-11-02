#!/bin/bash
#add fix to exercise2 here
#There is 404 HTTP error. Problem is tha the host name is points to localhost in the local HOSTS file, so curl goes to the local server to get the file.
# To fix it the incorrect HOSTS record should be removed. Here is the command to do it:
echo 'fix2: Editing HOSTS file'
sudo sed -i.bak '/127.0.0.1 www.ascii-art.de/d' /etc/hosts

