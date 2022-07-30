# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


#fix the compdef error 
autoload -Uz compinit
compinit



# Nix
if [ -e ~/.nix-profile/etc/profile.d/nix.sh ]; then . ~/.nix-profile/etc/profile.d/nix.sh; fi


#source plugins 
source ~/.zsh_plugins.sh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

#aliases
alias vim="nvim"
alias ls="ls -la"
alias wsl="cd /mnt/d/wsl"
alias c="clear"
alias n="cd ~/.dotfiles/nvim/.config/nvim"

#zsh-autosuggestions keybind
bindkey '	' autosuggest-accept

#settings 
unsetopt BEEP

#sets default starting directory
cd /mnt/d/wsl

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/patatone/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/patatone/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/patatone/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/patatone/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

