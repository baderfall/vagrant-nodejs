#!/bin/bash

# Update packages
apt-get update
echo "Updated Packages"

# Install Node JS
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
sudo apt-get install -y nodejs
echo "Installed Node JS"

# Install NPM packages
npm install -g nodemon
echo "Installed Nodemon"

echo "All done"
echo "Node version: " `node -v`
echo "NPM version: " `npm -v`
