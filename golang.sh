#!/bin/bash

VERSION=1.16.4
DISTRO=linux-amd64
FILE_NAME=go$VERSION.$DISTRO.tar.gz

# Unzip the binary archive to any directory you wanna install Node
curl -o $FILE_NAME https://dl.google.com/go/$FILE_NAME
rm -rf /usr/local/go
tar -C /usr/local -xzf $FILE_NAME
rm $FILE_NAME

# Set the environment variable ~/.profile, add below to the end
echo "export PATH=\$PATH:/usr/local/go/bin" >> ~/.profile

