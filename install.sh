#install apps
sudo apt install zsh
sudo apt-get install stow
sudo apt install tmux
sudo apt install zip
sudo apt install unzip
sudo apt-get install build-essential gdb

# stow
stow zsh
stow nvim
stow tmux
stow alacritty

# add zsh to valid login shells 
command -v zsh | sudo tee -a /etc/shells

#make zsh the default shell
sudo chsh -s $(which zsh) $USER

#installing nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
#insatll npm
nvm install node

npm install -g tree-sitter-cli
#commands to remove nvm if needed
#nvm deactivate
#nvm unload

