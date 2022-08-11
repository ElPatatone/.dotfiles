# My configs

A repository dedicated to easily maintain all my config files for apps I use.  
It also has an install script which when run will set up an already heavily customised developement environment based on the config files

I use this with `wsl` while running `Ubuntu 20.04.4`.

I rely on two main programs to make this work, the `nix package manager` lets me install software through it incredibly easily, and 
`GNU Stow` is what I use to sim-link all the .dotfiles and keep everything organised and easily maintainable.  

## What's in it?

Nix will install the following programs once the `install.sh` script runs:
- `zsh` (I use `antidote` as the plugin manager for the zsh shell) 
- `git` (I think you know what this is)
- `neovim` (my text editor of choice because it's cool) 
- `tmux` (window manager)
- `GNU stow` (used to simlink all the files and make it easy to manage)
- `fzf` (easily search for files while in the command line)
- `bat` (cat command but on steroids)
- `unzip` (unzipping tool)
- `gcc` (C compiler as it is needed for tree-siter nvim plugin to work)

Things installed without nix:
- `nvm` (node version manager)
- `npm` (installed through nvm to easily manage)
- `win32yank.exe` (system clipping tool that works in nvim as well)

## How to use this

### Requirements

> #### **_A linux system is needed to use this configuration!_**
If using Windows, set up `wsl` with the `windows terminal` to use any of the available linux distros on the microsoft store without needing to dualboot.  

There is no required software you have to install before running the `install.sh` 
But make sure your system is upto date by running the commands `sudo apt update` and then `sudo apt upgrade`.


### Steps for installation

1. Clone the repository
2. Make the `install.sh` file executable with the command `chmod +x install.sh` and then run it.
3. Create a new terminal session to allow the changes to take place and go through the powerlevel10k set up.
4. Open neovim and let packer install all the plugins, you might get an error saying `gruvbox colorscheme not found`, but don't worry it will fix itself the next time you open neovim.
5. You are ready to roll! Enjoy your freshly set up development environment :grin:
