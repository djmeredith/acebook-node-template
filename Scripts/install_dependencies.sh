#!/bin/bash

set -e

cd /home/ec2-user/app

npm install

if [ ! -f /etc/yum.repos.d/mongodb-org-8.0.repo ]; then
    echo "MongoDB repository not found. Adding it now..."
    sudo tee /etc/yum.repos.d/mongodb-org-8.0.repo > /dev/null <<EOF
[mongodb-org-8.0]
name=MongoDB Repository
baseurl=https://repo.mongodb.org/yum/amazon/2023/mongodb-org/8.0/x86_64/
gpgcheck=1
enabled=1
gpgkey=https://www.mongodb.org/static/pgp/server-8.0.asc
EOF
else
    echo "MongoDB repository already exists."
fi

if ! command -v mongod &> /dev/null; then
    echo "MongoDB not found, installing..."
    sudo yum install -y mongodb-org
else
    echo "MongoDB already installed."
fi


npm install -g pm2