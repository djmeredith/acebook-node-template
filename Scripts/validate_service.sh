#!/bin/bash

PORT=3000 

echo "Checking port availability..."

if ss -tuln | grep -q ":$PORT"; then
    echo "Port $PORT is open, server not running."
	exit 1
else
    echo "Port $PORT is not open."
fi