#!/usr/bin/env bash

# Setup dotfiles

git clone https://github.com/mudcrab/dot.git ~/.dot

curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

mkdir ~/.vimbackup
mkdir ~/.vimcache

mkdir -p /home/vagrant/.config/nvim

echo 'export PATH=$PATH:$GOROOT/bin' >> ~/.bashrc
echo 'source ~/.dot/shell/bashrc' >> ~/.bashrc

ln -s ~/.dot/.tmux.conf ~/.tmux.conf

ln -s ~/.dot/nvim.init ~/.config/nvim/init.vim
ln -s ~/.dot/nvim.init ~/.vimrc
ln -s ~/.dot/.gitconfig ~/.gitconfig
ln -s ~/.dot/.Xresources ~/.Xresources

echo 'PATH=~/.yarn/bin:$PATH' >> .bashrc

yarn global add typescript tern

nvim +PlugInstall +qall
