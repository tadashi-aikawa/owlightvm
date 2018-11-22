#!/bin/bash

cd /tmp

# gowl
wget https://github.com/tadashi-aikawa/gowl/releases/download/v0.4.0/gowl-0.4.0-x86_64-linux.tar.gz -O gowl.tar.gz
tar zvfx gowl.tar.gz
mv dist/* /usr/local/bin/
chmod +x /usr/local/bin/gowl

# z
wget https://raw.githubusercontent.com/rupa/z/master/z.sh -O z
mv z /usr/local/bin/
chmod +x /usr/local/bin/z

# awscli
apt install -y python-pip
pip install awscli
