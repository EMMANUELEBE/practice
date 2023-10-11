#!/bin/bash

apt-get update
apt-get -y install nginx
systemcl is-active nginx
sudo systemctl start nginx

echo "NGINX SCRIPT IS RUNNING"
sleep 2

echo "CONFRIMING IF NGINX INS ACRTIVE"
Ssleep 1

if (systemctl is-active nginx)
then
echo "creating labs directory"
sleep 1
mkdir /var/www/html/labs

echo "changing ownership from root to $USER"
sleep 1
chown $USER:root /var/www/html/labs

echo "CREATING SYMBOLIC LINK  html"
sleep 1
ln -s /var/www/html/labs html

echo "creating webpage file"
sleep 1
cd html
touch index.html

echo "writing data to webpage file"
sleep 1
echo "<html><body><h1>OPS PRCATICAL</h1></body></html>" >> index.html

else
echo "error occure, nginx not active"
exit 1

fi
