#!/bin/bash
set -e

cd /home/ec2-user/app

echo "Installing Node app dependencies..."
sudo npm i 

echo "Installing PM2 globally..."
npm install -g pm2
