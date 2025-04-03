#!/bin/bash

set -e

sudo yum update -y

sudo yum install -y curl

curl -fsSL https://rpm.nodesource.com/setup_23.x | sudo bash -

sudo yum install -y nodejs npm

if [ -d "/home/ec2-user/app/node_modules" ]; then
    rm -rf /home/ec2-user/app/node_modules
else
    echo "node_modules does not exist"
fi