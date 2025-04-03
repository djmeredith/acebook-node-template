#!/bin/bash

set -e

cd /home/ec2-user/app

echo "starting mongo"
sudo systemctl start mongod

pm2 start npm --name "app" -- start

pm2 save
pm2 startup