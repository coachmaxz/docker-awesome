#!/bin/sh

# Build
sudo -i
sudo apt-get install build-essential libssl-dev git -y

# Setup
mkdir -p /studio/build

# Install Wrk Load-Testing
cd /studio/build && git clone https://github.com/wg/wrk.git wrk
cd /studio/build/wrk && sudo make

# Global Command
cp /studio/build/wrk /usr/local/bin
wrk --version
