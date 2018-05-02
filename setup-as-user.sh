#!/usr/bin/env bash

# Setup dotfiles

git clone https://github.com/mudcrab/dot.git ~/.dot

mkdir -p /home/vagrant/.config/nvim

echo 'source ~/.dot/shell/bashrc' >> ~/.bashrc

ln -s ~/.dot/.tmux.conf ~/.tmux.conf

ln -s ~/.dot/nvim.vim ~/.config/nvim/init.vim
ln -s ~/.dot/nvim.vim ~/.vimrc
ln -s ~/.dot/.gitconfig ~/.gitconfig
ln -s ~/.dot/.Xresources ~/.Xresources

