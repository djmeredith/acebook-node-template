#!/bin/bash

sudo yum update -y
sudo yum install -y nodejs npm

npm cache clean --force
rm -rf node_modules package-lock.json 
npm install