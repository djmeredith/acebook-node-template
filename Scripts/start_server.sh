#!/bin/bash

set -e

cd /home/ec2-user/app

echo "starting mongo"
sudo systemctl start mongod

pm2 start npm --name "md-app" -- start

pm2 save
pm2 startup
sudo env PATH=$PATH:/usr/bin /usr/lib/nodejs18/lib/node_modules/pm2/bin/pm2 startup systemd -u ec2-user --hp /home/ec2-user