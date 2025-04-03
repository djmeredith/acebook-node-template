#!/bin/bash

set -e

cd /home/ec2-user/app

echo "starting mongod"
sudo systemctl start mongod

pm2 start ./bin/www