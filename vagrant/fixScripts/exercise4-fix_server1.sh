#!/bin/bash
#add fix to exercise4-server1 here
echo "fix #4 adding server2 IP to HOSTS"
sudo sh -c "echo '192.168.100.11 server2' >> /etc/hosts"