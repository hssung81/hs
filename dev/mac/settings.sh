echo "Install GNU tools"
brew tap homebrew/dupes
brew install findutils --default-names
brew install gnu-sed --default-names
brew install gnu-tar --default-names
brew install gnu-which --default-names
brew install gnutls --default-names
brew install grep --default-names
brew install coreutils
brew install binutils
brew install diffutils
brew install gzip
brew install watch
brew install tmux
brew install wget
brew install nmap
brew install gpg
brew install htop
brew install python
brew install ctags

echo "install vundle and powerline"
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
git clone https://github.com/erikw/tmux-powerline.git
