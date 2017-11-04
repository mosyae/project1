#!/bin/bash
#add fix to exercise4-server2 here
echo "fix #4 adding server1 IP to HOSTS"
sudo sh -c "echo '192.168.100.10 server1' >> /etc/hosts"