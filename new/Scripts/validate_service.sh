#!/bin/bash
set -e

PORT=3000 
URL=$(curl -s http://checkip.amazonaws.com/) 

# echo "Checking port availability..."
# if ss -tuln | grep -q ":$PORT"; then
#     echo "Port $PORT is open, server not running."
# 	exit 1
# else
#     echo "Port $PORT is not open."
# fi

sleep 5

echo "Checking website exists"
if curl --silent --fail "http://${URL}:${PORT}"; then
    echo "Website is running."
else
    echo "Website not running."
    exit 1
fi
