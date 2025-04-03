#!/bin/bash

set -e

cd /home/ec2-user/app

echo "Starting mongod..."
sudo systemctl start mongod

echo "Checking for existing PM2 processes..."
if pm2 list | grep -q 'md-app'; then
    echo "Stopping and deleting existing PM2 processes..."
    pm2 stop md-app
    pm2 delete md-app
else
    echo "No existing PM2 processes found."
fi

echo "Starting application with PM2..."
pm2 start ./bin/www --name "md-app"

echo "Saving PM2 process list..."
pm2 save
