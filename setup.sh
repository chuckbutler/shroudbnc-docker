#!/bin/bash

set -ex

# Install predeps
apt-get update
apt-get install -y build-essential tcl8.5-dev libcurl4-openssl-dev wget


# SBNC requires a non-root user
adduser sbnc
mkdir -p /sbnc
chown -R sbnc:sbnc /sbnc

# Fetch and install SBNC
wget http://shroudbnc.info/redmine/attachments/download/42/sbnc-1.3.9.tar.gz
tar xvfz sbnc-1.3.9.tar.gz
cd sbnc-1.3.9
./configure
make
make install

echo "====================================================="
echo "  Now you need to run this container to create users"
echo " for sbnc. You can do this with a volume mount for"
echo " persistence.   eg:"
echo " docker run -v /sbnc_data:/sbnc lazypower/sbnc sbnc --config=/sbnc"
echo " ===================================================="
