# install nix
curl -L https://nixos.org/nix/install | sh

# source nix
. ~/.nix-profile/etc/profile.d/nix.sh

# install packages
nix-env -iA \
	nixpkgs.zsh \
	nixpkgs.git \
	nixpkgs.tmux \
	nixpkgs.stow \
	nixpkgs.fzf \
	nixpkgs.bat \
	nixpkgs.unzip \
    nixpkgs.gcc \

# stow
stow zsh
stow nvim
stow tmux

#add zsh to valid login shells 
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

#gets the clipboard to work with nvim 
curl -sLo/tmp/win32yank.zip https://github.com/equalsraf/win32yank/releases/download/v0.0.4/win32yank-x64.zip
unzip -p /tmp/win32yank.zip win32yank.exe > /tmp/win32yank.exe
chmod +x /tmp/win32yank.exe
sudo mv /tmp/win32yank.exe /usr/local/bin/

