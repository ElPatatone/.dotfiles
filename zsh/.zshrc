# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n] confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

#fix the compdef error 
autoload -Uz compinit
compinit

#get antidote
[[ -e ~/.antidote ]] || git clone https://github.com/mattmc3/antidote.git ~/.antidote

# source antidote
source ~/.antidote/antidote.zsh

# generate and source plugins from ~/.zsh_plugins.txt
antidote load ${ZDOTDIR:-$HOME}/.zsh_plugins.txt
zstyle ':antidote:compatibility-mode' 'antibody' 'on'

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

#aliases
#system shortcuts
alias vim="nvim"
alias ls="ls -la"
alias c="clear"

#fzf through files
alias sd='cd "$(find ~/Documents -type d | fzf)"'

#shortcut for a directory
alias n="cd ~/.dotfiles/nvim/.config/nvim"
alias d="cd ~/.dotfiles"
alias u="cd ~/.dotfiles/nvim/.config/nvim/lua/user"


#this is a script for making new tmux sessions
# alias tn="$HOME/.local/scripts/tmux-sessions.sh"
# alias repo="$HOME/.local/scripts/repo-setup.sh"
# alias add="$HOME/.local/scripts/clone-repo.sh"

# source "$HOME/.local/scripts/alleno.sh"

#git commands
alias gs="git status"
alias ga="git add"
alias gc="git commit"
alias gco="git checkout"
alias gb="git branch"
alias gcb="git checkout -b"
alias gp="git push"
alias gl="git log"
alias gll="git log --oneline"
alias gd="git diff"
alias gdel="git branch -D"
alias glf=" git log --graph --pretty=format:'%C(italic yellow)%ad%Creset %C(green)<%an> %C(bold magenta)%h%Creset -%C(auto)%d %Creset %s %Creset' --date=format-local:'%Y-%m-%d %H:%M (%a)'"

alias trova="cd ~/Programming/trova-git/build && ./trova && cd -"

#zsh-autosuggestions keybind
bindkey '^ ' autosuggest-accept
bindkey '[' history-substring-search-up
bindkey ']' history-substring-search-down

#this is for zsh autcompletion
zstyle -e ':autocomplete:list-choices:*' list-lines 'reply=( $(( LINES / 3 )) )'

#settings 
unsetopt BEEP

if [ -e /home/patatone/.nix-profile/etc/profile.d/nix.sh ]; then . /home/patatone/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export CARGO_HOME="/home/elpatatone/software/.cargo"
export RUSTUP_HOME="/home/elpatatone/software/.rustup"

export PATH="/home/elpatatone/.local/bin:/home/elpatatone/.local/scripts:/home/elpatatone/Programming/alleno-ora/src:/$CARGO_HOME/bin:/opt/nvim/:$PATH"


#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
typeset -g POWERLEVEL9K_INSTANT_PROMPT=quiet
