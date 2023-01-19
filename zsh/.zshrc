# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


#fix the compdef error 
autoload -Uz compinit
compinit


#get antidote
[[ -e ~/.antidote ]] || git clone https://github.com/mattmc3/antidote.git ~/.antidote

# source antidote
. ~/.antidote/antidote.zsh

# generate and source plugins from ~/.zsh_plugins.txt
antidote load


# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

cd ~/Documents
#aliases
#system shortcuts
alias vim="nvim"
alias ls="ls -la"
alias c="clear"
alias zr="source .zshrc"

#shortcut for a directory
alias n="cd ~/.dotfiles/nvim/.config/nvim"
alias d="cd ~/.dotfiles"
alias u="cd ~/.dotfiles/nvim/.config/nvim/lua/user"
#conda
alias ca="conda activate"
alias dc="conda deactivate"
alias cc="conda create --name"
alias cr="conda env remove --name"
alias ce="conda env list"
alias cl="conda list"
alias ci="conda install"
alias j="jupyter-notebook"

#git commands
alias gf="git fork"
alias gs="git status"
alias ga="git add"
alias gc="git commit"
alias gcm="git commit -m"
alias gco="git checkout"
alias gb="git branch"
alias gcb="git checkout -b"
alias gp="git push"
alias gl="git log"
alias gcl="git clone"
alias gpl="git pull"
alias gll="git log --oneline"
alias gd="git diff"
alias gdel="git branch -D"
alias glf=" git log --graph --pretty=format:'%C(italic yellow)%ad%Creset %C(green)<%an> %C(bold magenta)%h%Creset -%C(auto)%d %Creset %s %Creset' --date=format-local:'%Y-%m-%d %H:%M (%a)'"

#zsh-autosuggestions keybind
bindkey '	' autosuggest-accept
bindkey '[' history-substring-search-up
bindkey ']' history-substring-search-down

#tmux aliases
alias t="tmux"
alias ta="tmux attach"
alias tas="tmux attach -t"
alias tl="tmux ls"
alias tn="tmux new -s" 
alias tk="tmux kill-session -t"
alias td="tmux detach"
alias t="tmux"
alias t="tmux"
alias t="tmux"
#settings 
unsetopt BEEP

if [ -e /home/patatone/.nix-profile/etc/profile.d/nix.sh ]; then . /home/patatone/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer

export CLANGD_FLAGS="-I/usr/include/c++/11"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
