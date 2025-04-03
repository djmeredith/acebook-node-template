#!/bin/bash

set -e

cd /home/ec2-user

echo "delete app directory if it exists"
if [ -d "app" ]; then
    rm -rf app
else
    echo "app does not exist"
fi

echo "yum update"
sudo yum update -y

echo "Get node 23 repo"
curl -fsSL https://rpm.nodesource.com/setup_23.x | sudo bash -

echo "install node and npm"
sudo yum install -y nodejs npm

# echo "delete node modules if they exist"
# if [ -d "node_modules" ]; then
#     rm -rf node_modules
# else
#     echo "node_modules does not exist"
# fi