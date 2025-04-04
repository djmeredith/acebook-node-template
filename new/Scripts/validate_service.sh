#!/bin/bash
set -e

PORT=3000 
URL=$(curl -s http://checkip.amazonaws.com/) 
echo "The ip address of this ec2 instance is ${URL}"
exit 1

# echo "Checking website exists"
# if curl --silent --fail "http://${URL}:${PORT}"; then
#     echo "Website is running on port ${PORT}."
# else
#     echo "Website not running."
#     exit 1
# fi
