#!/usr/bin/env bash

sudo apt-get update && sudo apt-get install -y curl

# Add repositories

curl -sL https://deb.nodesource.com/setup_9.x | sudo -E bash -
curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -

# Pre-install setup

/usr/share/debconf/fix_db.pl

debconf-set-selections <<< "mysql-server mysql-server/root_password password asdf1234"
debconf-set-selections <<< "mysql-server mysql-server/root_password_again password asdf1234"

echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list

# Install

sudo apt-get update

sudo apt-get install -y git build-essential nodejs yarn nginx ruby-dev cmake python-dev python3-dev vim-nox htop tmux neovim python-pip

pip install neovim

# Install Go

mkdir -p /usr/local/go

wget https://dl.google.com/go/go1.10.2.linux-amd64.tar.gz

tar -C /usr/local -xzf go1.10.2.linux-amd64.tar.gz

echo 'export PATH=$PATH:/usr/local/go/bin' >> /etc/profile
