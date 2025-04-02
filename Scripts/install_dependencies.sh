#!/bin/bash

set -e

sudo yum update -y
sudo yum install -y nodejs npm

cd /home/ec2-user/app

# npm cache clean --force
# rm -rf node_modules package-lock.json 

npm install