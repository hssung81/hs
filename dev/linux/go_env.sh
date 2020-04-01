#!/bin/bash

sudo add-apt-repository ppa:jonathonf/vim -y
sudo apt update
sudo apt install vim -y

wget https://dl.google.com/go/go1.14.1.linux-amd64.tar.gz

mkdir ~/golang
tar -C ~/golang -xzf go1.14.1.linux-amd64.tar.gz

echo "export PATH=$PATH:~/golang/go/bin
export GOPATH=~/golang/go" >> ~/.profile
source ~/.profile


mkdir -p ~/.vim/autoload ~

cd ~/.vim/autoload

curl -LSso pathogen.vim https://tpo.pe/pathogen.vim

bdate=`date +"%Y%m%d"`
mv ~/.vimrc ~/.vimrc_$bdate
echo "execute pathogen#infect()
syntax on
filetype plugin indent on
set mouse=a
map <C-l> :TagbarToggle<CR>
map <C-k> :NERDTreeToggle<CR>
map <C-m> :set mouse=a<CR>
map <C-n> :set mouse-=a<CR>" > ~/.vimrc

mkdir ~/.vim/bundle

cd ~/.vim/bundle

git clone https://github.com/fatih/vim-go.git

apt-get install mercurial -y

vim -c 'GoInstallBinaries' -c 'qa!'

apt-get install python3-dev cmake -y

cd ~/.vim/bundle
git clone https://github.com/Valloric/YouCompleteMe.git
cd YouCompleteMe
git submodule update --init --recursive
./install.sh

apt-get install ctags
cd ~/.vim/bundle
git clone https://github.com/majutsushi/tagbar.git

cd ~/.vim/bundle
git clone https://github.com/scrooloose/nerdtree.git 
