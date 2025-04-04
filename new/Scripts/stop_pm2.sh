#!/bin/bash
set -e

echo "Stopping PM2 processes"
if pm2 list | grep -q 'md-app'; then
    pm2 stop md-app
    pm2 delete md-app
else
    echo "No running PM2 process found."
fi
