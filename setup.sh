#!/usr/bin/env bash

sudo apt-get update && sudo apt-get install -y curl

# Add repositories

curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -
curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -

# Pre-install setup

/usr/share/debconf/fix_db.pl

debconf-set-selections <<< "mysql-server mysql-server/root_password password asdf1234"
debconf-set-selections <<< "mysql-server mysql-server/root_password_again password asdf1234"

echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list

# Install

sudo apt-get update

sudo apt-get install -y git build-essential nodejs yarn nginx ruby-dev cmake python-dev python3-dev vim-nox htop
