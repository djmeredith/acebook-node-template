#!/bin/bash

sudo yum update -y
sudo yum install -y nodejs npm

sudo npm install

sudo brew tap mongodb/brew

sudo brew install mongodb-community@8.0
