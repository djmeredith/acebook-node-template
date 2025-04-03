#!/bin/bash

set -e

cd /home/ec2-user

echo "Checking if PM2 is installed..."
if command -v pm2 &> /dev/null
then
    pm2 delete all
else
    echo "PM2 is not installed, skipping PM2 cleanup."
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