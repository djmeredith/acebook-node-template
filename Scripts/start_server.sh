#!/bin/bash

set -e

cd /home/ec2-user/app

sudo systemctl start mongod

nohup npm start > app.log 2>&1 &
