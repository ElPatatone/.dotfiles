# install nix
curl -L https://nixos.org/nix/install | sh

# source nix
. ~/.nix-profile/etc/profile.d/nix.sh

# install packages
nix-env -iA \
	nixpkgs.zsh \
	nixpkgs.git \
	nixpkgs.neovim \
	nixpkgs.tmux \
	nixpkgs.stow \
	nixpkgs.fzf \
	nixpkgs.bat \

# stow
stow zsh
stow nvim

#add zsh to valid login shells 
command -v zsh | sudo tee -a /etc/shells

#make zsh the default shell
sudo chsh -s $(which zsh) $USER


