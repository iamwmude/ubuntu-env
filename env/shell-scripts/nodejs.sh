#!/bin/bash

VERSION=v14.17.0
DISTRO=linux-x64

# Unzip the binary archive to any directory you wanna install Node
curl -o node-$VERSION-$DISTRO.tar.xz https://nodejs.org/dist/$VERSION/node-$VERSION-$DISTRO.tar.xz
sudo mkdir -p /usr/local/lib/nodejs
sudo tar -xJvf node-$VERSION-$DISTRO.tar.xz -C /usr/local/lib/nodejs
rm node-$VERSION-$DISTRO.tar.xz

# Set the environment variable ~/.profile, add below to the end
echo "export PATH=/usr/local/lib/nodejs/node-$VERSION-$DISTRO/bin:\$PATH" >> ~/.profile

# Refresh .profile
. ~/.profile

# Install yarn
npm install -g yarn
