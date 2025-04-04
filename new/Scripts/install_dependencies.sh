#!/bin/bash
set -e

cd /home/ec2-user/app

echo "Installing Node app dependencies..."
if git diff --quiet HEAD~1 package.json package-lock.json; then
    echo "No changes in package files, running npm ci..."
    npm ci
else
    echo "Package files have changed, running npm install..."
    npm install
fi

echo "Installing PM2 globally..."
npm install -g pm2
