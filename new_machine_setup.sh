#!/bin/bash

sudo apt-get update
sudo apt-get install vim tmux zsh build-essential git-core curl wget concalc 
snap install termdown
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Set up git
git config --global user.name "Timon Bestebreur"
git config --global user.email timonbestebreur@gmail.com
git config --global core.editor vim

# Generate ssh key pair
echo "Press enter on the following queries"
ssh-keygen -t rsa
echo "Copy/paste the following in the github ssh key textbox:"
cat ~/.ssh/id_rsa.pub

# Clone dotfiles and scripts
git clone ssh:github.com/UltraTimon/dotfiles.git
git clone ssh:githun.com/UltraTimon/scripts.git

# add the alias and zsh file to the .zshrc file
echo "source ~/dotfiles/zshrc.zsh" | cat >> .zshrc
echo "source ~/dotfiles/aliases" | cat >> .zshrc

# add the vim configs to a .vimrc file
echo "source ~/dotfiles/vimrc.vim" | cat >> .vimrc



echo "Manually install/configure:
dropbox (https://www.dropbox.com/)
franz (https://meetfranz.com/#download)
protonmail bridge (https://protonmail.com/download/beta/protonmail-bridge_1.1.6-1_amd64.deb)
thunderbird (https://protonmail.com/bridge/thunderbird#1)
"


