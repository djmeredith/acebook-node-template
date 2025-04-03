#!/bin/bash


if [ -d "/home/ec2-user/app" ]; then
    rm -rf /home/ec2-user/app
else
    echo "Directory does not exist"
fi
exit 1