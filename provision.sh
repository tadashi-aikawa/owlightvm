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

# tree
apt install -y tree

# bat
wget https://github.com/sharkdp/bat/releases/download/v0.9.0/bat-v0.9.0-x86_64-unknown-linux-musl.tar.gz -O bat.tar.gz
tar zvfx bat.tar.gz
mv bat-*-unknown-linux-musl/bat /usr/local/bin/
chmod +x /usr/local/bin/bat

# fd
wget https://github.com/sharkdp/fd/releases/download/v7.2.0/fd-v7.2.0-x86_64-unknown-linux-musl.tar.gz -O fd.tar.gz
tar zvfx fd.tar.gz
mv fd-*-unknown-linux-musl/fd /usr/local/bin/
chmod +x /usr/local/bin/fd

# ripgrep
wget https://github.com/BurntSushi/ripgrep/releases/download/0.10.0/ripgrep-0.10.0-x86_64-unknown-linux-musl.tar.gz -O ripgrep.tar.gz
tar zvfx ripgrep.tar.gz
mv ripgrep-*-unknown-linux-musl/rg /usr/local/bin/
chmod +x /usr/local/bin/rg

