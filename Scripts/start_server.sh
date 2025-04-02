#!/bin/bash

set -e

cd /home/ec2-user/app

sudo systemctl start mongod

npm start