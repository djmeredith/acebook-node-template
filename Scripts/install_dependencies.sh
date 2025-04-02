#!/bin/bash

echo "Updating packages..."
sudo yum update -y
echo "Updated"

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew install nvm

nvm install 23

npm install

brew tap mongodb/brew

brew install mongodb-community@8.0
