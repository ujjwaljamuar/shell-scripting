#!/bin/bash

# declare variables
PACKAGE="wget unzip apache2"
SVC="apache2"
TMP_DIR="/tmp/webfiles"
URL="https://www.tooplate.com/zip-templates/2135_mini_finance.zip"
TEMPLATE="2135_mini_finance"

# install dependencies
echo "===================Installing Dependecies========================="
sudo apt install $PACKAGE -y > /dev/null

echo""

# enable httpd
echo "======enabling apache2=========="
sudo systemctl start $SVC
sudo systemctl enable $SVC

echo ""

# creating folder 
echo "------creating folder /tmp/webfiles---------"
mkdir -p $TMP_DIR
cd $TMP_DIR

echo ""

echo "=======Downloading template========"
wget $URL > /dev/null

echo ""

echo "=========Copying template to /var/www/html============"
unzip $TEMPLATE.zip > /dev/null
sudo cp -r $TEMPLATE/* /var/www/html

echo ""

rm -rf $TMP_DIR

echo "============Restarting apache2============="
sudo systemctl restart $SVC

rm -rf $TMP_DIR


sudo systemctl status $SVC

ls /var/www/html
