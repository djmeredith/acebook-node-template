#!/bin/bash

set -e

cd /home/ec2-user

# echo "delete app directory if it exists"
# if [ -d "app" ]; then
#     rm -rf app
# else
#     echo "app does not exist"
# fi

if command -v pm2 &> /dev/null
then
    echo "PM2 is installed."
    
    if pm2 list | grep -q 'online'
    then
        echo "PM2 processes are running. Stopping all PM2 processes..."
        pm2 stop all
    else
        echo "No PM2 processes are currently running."
    fi
else
    echo "PM2 is not installed or not found in the PATH."
fi

sudo yum clean all

echo "yum update"
sudo yum update -y

echo "Get node 23 repo"
curl -fsSL https://rpm.nodesource.com/setup_23.x | sudo bash -

echo "install node and npm"
sudo yum install -y nodejs npm

echo "delete node modules if they exist"
if [ -d "node_modules" ]; then
    rm -rf node_modules
else
    echo "node_modules does not exist"
fi