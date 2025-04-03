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

sudo yum install -y mongodb-org

npm install -g pm2

sudo env PATH=$PATH:/usr/bin /usr/lib/nodejs18/lib/node_modules/pm2/bin/pm2 startup systemd -u ec2-user --hp /home/ec2-user