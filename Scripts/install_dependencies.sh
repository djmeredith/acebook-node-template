#!/bin/bash

sudo yum update -y
sudo yum install -y nodejs npm

npm cache clean --force
npm install