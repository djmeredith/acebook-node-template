#!/bin/bash
set -e

cd /home/ec2-user/app

echo "Starting mongod..."
sudo systemctl start mongod

echo "Starting application with PM2..."
pm2 start ./bin/www --name "md-app"

echo "Saving PM2 process list..."
pm2 save
