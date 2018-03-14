#!/bin/bash

echo "install ctags"
sudo apt-get install ctags

echo "install vundle and powerline"
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
git clone https://github.com/erikw/tmux-powerline.git ~/.vim/tmux-powerline


sudo apt-get install python-pip -y
sudo apt-get install bison -y

sudo apt-get install git -y
