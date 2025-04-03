#!/bin/bash

# set -e

# sudo yum update -y

# sudo yum install -y curl

# curl -fsSL https://rpm.nodesource.com/setup_23.x | sudo bash -

# sudo yum install -y nodejs npm

# cd /home/ec2-user/app

# # npm cache clean --force
# # rm -rf node_modules package-lock.json 

# npm install

# sudo tee /etc/yum.repos.d/mongodb-org-8.0.repo <<EOF
# [mongodb-org-8.0]
# name=MongoDB Repository
# baseurl=https://repo.mongodb.org/yum/amazon/2023/mongodb-org/8.0/x86_64/
# gpgcheck=1
# enabled=1
# gpgkey=https://www.mongodb.org/static/pgp/server-8.0.asc
# EOF

# sudo yum install -y mongodb-org

if [ -d "app" ]; then
    echo "Directory exists"
else
    echo "Directory does not exist"
fi

exit 1