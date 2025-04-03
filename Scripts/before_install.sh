#!/bin/bash

set -e

echo "Changing directory to /home/ec2-user"
cd /home/ec2-user

echo "Cleaning YUM cache..."
sudo yum clean all

echo "Updating system packages..."
sudo yum update -y

echo "Adding Node.js 23 repository..."
curl -fsSL https://rpm.nodesource.com/setup_23.x | sudo bash -

echo "Installing Node.js and npm..."
sudo yum install -y nodejs npm

echo "Checking if 'node_modules' directory exists..."
if [ -d "node_modules" ]; then
    echo "Deleting existing 'node_modules' directory..."
    rm -rf node_modules
else
    echo "'node_modules' does not exist, skipping deletion."
fi
