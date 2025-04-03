#!/bin/bash


if [ -d "/home/ec2-user" ]; then
    echo "Directory exists"
else
    echo "Directory does not exist"
fi
exit 1