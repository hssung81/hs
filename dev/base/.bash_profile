if [ -f ~/.bashrc ]; then
  . ~/.bashrc
fi

export CLICOLOR=1
export LSCOLORS=exFxBxDxCxegedabagacad
export LS_OPTIONS='--color=auto'

export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_55.jdk/Contents/Home
export EC2_HOME=~/aws/ec2

export EC2_KEY_DIR=~/aws
export EC2_PRIVATE_KEY=${EC2_KEY_DIR}/key.pem
export EC2_CERT=${EC2_KEY_DIR}/cert.pem
export PATH=$PATH:$EC2_HOME/bin

export EDITOR=vim
