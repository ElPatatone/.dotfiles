# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc. 
# Initialization code that may require console input (password prompts, [y/n] 
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; 
  then source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
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

#aliases system shortcuts
alias vim="nvim" alias ls="ls -la" alias c="clear"

#fzf through files
# alias sd='cd "$(find ~/Programming -mindepth 1 -maxdepth 1 -type d | fzf)"'

#shortcut for a directory
alias n="cd ~/Documents/notes" 
alias d="cd ~/.dotfiles" 
alias u="cd ~/.dotfiles/nvim/.config/nvim/lua/user"

repo() {
    if [[ $# -eq 1 ]]; then
        selected=$1
    else
        selected=$(find ~/Programming -maxdepth 1 -type d | fzf)
    fi

    if [[ -z $selected ]]; then
        return 0
    fi

    cd "$selected"
}

#this is a script for making new tmux sessions
# alias tn="$HOME/.local/scripts/tmux-sessions.sh"
# alias repo="$HOME/.local/scripts/repo-setup.sh"
# alias add="$HOME/.local/scripts/clone-repo.sh"
# source "$HOME/.local/scripts/alleno.sh"

#git commands
alias gs="git status" alias ga="git add" alias gc="git commit" alias gco="git 
checkout" alias gb="git branch" alias gcb="git checkout -b" alias gp="git push" alias 
gl="git log" alias gll="git log --oneline" alias gd="git diff" alias gdel="git branch 
-D" alias glf=" git log --graph --pretty=format:'%C(italic yellow)%ad%Creset 
%C(green)<%an> %C(bold magenta)%h%Creset -%C(auto)%d %Creset %s %Creset' 
--date=format-local:'%Y-%m-%d %H:%M (%a)'"

#zsh-autosuggestions keybind
bindkey '^ ' autosuggest-accept 
bindkey '[' history-substring-search-up 
bindkey ']' history-substring-search-down

#this is for zsh autcompletion
zstyle -e ':autocomplete:list-choices:*' list-lines 'reply=( $(( LINES / 3 )) )'

# export CLANGD_FLAGS="-I/usr/include/c++/11"

#settings
unsetopt BEEP

if [ -e /home/patatone/.nix-profile/etc/profile.d/nix.sh ]; then . /home/patatone/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export CARGO_HOME="/home/elpatatone/software/.cargo" export 
RUSTUP_HOME="/home/elpatatone/software/.rustup"

export GEM_HOME="$HOME/gems"
export PATH="$PATH:/opt/nvim-linux-x86_64/bin:$HOME/gems/bin:$HOME/.local/scripts"
export PATH="$PATH:/usr/local/cuda-12.9/bin"
export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:/usr/local/cuda-12.9/lib64"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
typeset -g POWERLEVEL9K_INSTANT_PROMPT=quiet
export PATH="/home/elpatatone/.config/herd-lite/bin:$PATH"
export PHP_INI_SCAN_DIR="/home/elpatatone/.config/herd-lite/bin:$PHP_INI_SCAN_DIR"
