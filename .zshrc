export ZSH="/home/juandl/.oh-my-zsh"

ZSH_THEME="custom"

plugins=(git shrink-path zsh-syntax-highlighting web-search dotnet)

source $ZSH/oh-my-zsh.sh

# hide user promp unless in ssh
export DEFAULT_USER="$(whoami)"

export PATH="/home/juandl/.local/bin:$PATH"

bindkey -e
# Control + backspace
bindkey '^H' backward-kill-word
