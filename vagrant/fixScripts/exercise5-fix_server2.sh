#!/bin/bash
#add fix to exercise5-server2 here
echo "fix #5 on server2 allow ssh wthout password"
sudo apt-get install sshpass
cat << 'EOF' > /home/vagrant/script_fix5.sh
until nc -z server1 22;
    do
    echo "...waitng for server1 to start with ssh..."
    sleep 10
done
ssh-keygen -q -t rsa -N '' -f /home/vagrant/.ssh/id_rsa
sudo ssh-keyscan server1 >> /home/vagrant/.ssh/known_hosts
sshpass -p "vagrant" ssh-copy-id -i /home/vagrant/.ssh/id_rsa.pub vagrant@server1
exit 0
EOF
chown vagrant:vagrant /home/vagrant/script_fix5.sh
chmod +x /home/vagrant/script_fix5.sh
echo "if [ ! -f "/home/vagrant/.ssh/id_rsa" ]; then /home/vagrant/script_fix5.sh & fi" >> /home/vagrant/.profile
