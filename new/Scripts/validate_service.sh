#!/bin/bash
set -e

PORT=3000 
echo "The port used is ${PORT}"
# URL=$(curl -s http://checkip.amazonaws.com/) 
# echo "The ip address of this ec2 instance is ${URL}"
exit 1

echo "Checking website exists"
if curl --silent --fail "http://35.178.189.165:3000"; then
    echo "Website is running on port 3000."
else
    echo "Website not running."
    exit 1
fi
