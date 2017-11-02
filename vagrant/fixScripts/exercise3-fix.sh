#!/bin/bash
#add fix to exercise3 here
#The problem is that the settings on the apache is not 
echo 'fix3: Enable allow all on apache server'
sudo sed -i.bak -e '0,/deny from all/ s/deny from all/allow from all/' /etc/apache2/sites-available/default
sudo service apache2 restart