echo "Installing tools..."
sudo apt update && sudo apt upgrade -y
sudo apt install trash-cli vim sl zsh tldr autojump wget -y
echo "Updating user config..."
cd ~
wget -O .zshrc https://git.grml.org/f/grml-etc-core/etc/zsh/zshrc
echo "# Load autojump" >> .zshrc
echo ". /usr/share/autojump/autojump.sh" >> .zshrc
echo "source .alias" >> .zshrc
echo "alias rm='trash'" >> .alias
mkdir -p Executables/bin/
echo 'PATH="/home/alex/Executables/bin:$PATH"' >> .zshrc
echo "Changing shell to zsh..."
sudo chsh -s /bin/zsh
#echo "zsh" >> .bashrc
echo "All OK!"
