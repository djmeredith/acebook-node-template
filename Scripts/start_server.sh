#!/bin/bash

set -e

cd /home/ec2-user/app

echo "starting mongod"
sudo systemctl start mongod

/usr/bin/pm2 start npm --name "md-app" -- start

sudo env PATH=$PATH:/usr/bin /usr/bin/pm2 startup systemd -u ec2-user --hp /home/ec2-user

sudo systemctl enable pm2-ec2-user
sudo systemctl start pm2-ec2-user

