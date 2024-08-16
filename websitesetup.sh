#!/bin/bash

# install dependencies
echo "===================Installing Dependecies========================="
sudo apt install wget unzip apache2 -y > /dev/null

echo""

# enable httpd
echo "======enabling apache2=========="
sudo systemctl start apache2
sudo systemctl enable apache2

echo ""

# creating folder 
echo "------creating folder /tmp/webfiles---------"
mkdir -p /tmp/webfiles
cd /tmp/webfiles

echo ""

echo "=======Downloading template========"
wget https://www.tooplate.com/zip-templates/2135_mini_finance.zip > /dev/null

echo ""

echo "=========Copying template to /var/www/html============"
unzip 2135_mini_finance.zip > /dev/null
sudo cp -r 2135_mini_finance/* /var/www/html

echo ""

rm -rf /tmp/webfiles

echo "============Restarting apache2============="
sudo systemctl restart apache2

rm -rf /tmp/webfiles 

sudo systemctl status apache2

ls /var/www/html
