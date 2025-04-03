#!/bin/bash

set -e

cd /home/ec2-user

echo "Cleaning YUM cache..."
sudo yum clean all

echo "Updating system packages..."
sudo yum update -y

if ! grep -q "https://rpm.nodesource.com/setup_23.x" /etc/yum.repos.d/nodesource.repo; then
    echo "Adding Node.js 23 repository..."
    curl -fsSL https://rpm.nodesource.com/setup_23.x | sudo bash -
else
    echo "Node.js 23 repository already exists."
fi

echo "Installing Node.js and npm..."
sudo yum install -y nodejs npm

echo "Checking if 'node_modules' directory exists..."
if [ -d "node_modules" ]; then
    echo "Deleting existing 'node_modules' directory..."
    rm -rf node_modules
else
    echo "'node_modules' does not exist, skipping deletion."
fi
