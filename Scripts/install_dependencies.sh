#!/bin/bash

echo "Updating packages..."
sudo yum update -y
echo "Updated"

sudo /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

sudo brew install nvm

sudo nvm install 23

sudo npm install

sudo brew tap mongodb/brew

sudo brew install mongodb-community@8.0
