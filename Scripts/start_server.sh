#!/bin/bash

set -e

cd /home/ec2-user/app

echo "starting mongod"
sudo systemctl start mongod

sudo pm2 startup
sudo su -c "sudo env PATH=$PATH:/usr/bin /usr/lib/node_modules/pm2/bin/pm2 startup systemd -u ec2-user --hp /home/ec2-user"
sudo pm2 save