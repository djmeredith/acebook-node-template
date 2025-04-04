#!/bin/bash
set -e

echo "Checking for existing PM2 processes..."
if pm2 list | grep -q 'md-app'; then
    echo "➡ Stopping and deleting existing PM2 processes..."
    pm2 stop md-app
    pm2 delete md-app
else
    echo "➡ No existing PM2 processes found."
fi