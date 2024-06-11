#!/bin/bash

echo "Installing tools..."
sudo apt update && sudo apt upgrade -y
sudo apt install trash-cli vim sl zsh tldr autojump wget nala fzf -y
echo "Updating user config..."
cd ~
wget -O .zshrc https://git.grml.org/f/grml-etc-core/etc/zsh/zshrc
echo "# Load autojump" >> .zshrc
echo ". /usr/share/autojump/autojump.sh" >> .zshrc
echo "source ~/.alias" >> .zshrc
echo "alias rm='trash'" >> .alias
echo "alias update-all='sudo nala upgrade --download-only -y ; sudo apt update && sudo apt upgrade -y'" >> .alias
mkdir -p ~/Executables/bin/
echo 'PATH="$USER/Executables/bin:$PATH"' >> .zshrc
echo "Changing shell to zsh..."
chsh -s /bin/zsh
#echo "zsh" >> .bashrc
echo "All OK!"
