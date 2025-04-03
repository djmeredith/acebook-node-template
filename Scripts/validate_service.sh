#!/bin/bash

PORT=3000 

echo "Checking port availability..."
if ss -tuln | grep -q ":$PORT"; then
    echo "Port $PORT is open, server not running."
	exit 1
else
    echo "Port $PORT is not open."
fi
sleep 5
echo "Checking website exists"
if curl —-silent --fail http://35.179.121.20:3000 ; then
    echo "website is running."
else
    echo "Website not runnning."
    exit 1
fi
