#!/bin/bash

set -e

cd /home/ec2-user/app

echo "starting mongo"
sudo systemctl start mongod

nohup npm start > app.log 2>&1 &
