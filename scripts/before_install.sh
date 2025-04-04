#!/bin/bash
set -e

cd /home/ec2-user/app

echo "➡ Cleaning YUM cache..."
sudo yum clean all

echo "➡ Updating system packages..."
sudo yum update -y

if ! command -v node &> /dev/null; then
    echo "Node.js not found. Installing..."
    
    NODE_REPO_FILE="/etc/yum.repos.d/nodesource.repo"
    if [ ! -f "$NODE_REPO_FILE" ] || ! grep -q "https://rpm.nodesource.com/setup_23.x" "$NODE_REPO_FILE"; then
        echo "Adding Node.js 23 repository..."
        curl -fsSL https://rpm.nodesource.com/setup_23.x | sudo bash -
    else
        echo "Node.js 23 repository already exists."
    fi

    echo "Installing Node.js and npm..."
    sudo yum install -y nodejs npm
else
    echo "Node.js is already installed."
fi

if [ ! -f /etc/yum.repos.d/mongodb-org-8.0.repo ]; then
    echo "MongoDB repo not found. Adding..."
    sudo tee
fi