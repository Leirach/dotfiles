export ZSH="/home/juandl/.oh-my-zsh"

ZSH_THEME="custom"

plugins=(git shrink-path zsh-syntax-highlighting web-search dotnet)

source $ZSH/oh-my-zsh.sh

# hide user promp unless in ssh
export DEFAULT_USER="$(whoami)"

# kubectl
# source <(kubectl completion zsh)
export KUBE_EDITOR="code -w"

export PATH="/home/juandl/.local/bin:$PATH"

alias explorer='explorer.exe .'

# aws sam
# sam local invoke
sli () {
    sam local invoke "$@" 2>&1 | tr "\r" "\n"
}

# sam local star api
slapi () {
    sam local start-api 2>&1 | tr "\r" "\n"
}

# postgres
export PGPASSWORD="admin"

# export EDITOR="code -w"
eval "$(direnv hook zsh)"

#kubectl
[[ $commands[kubectl] ]] && source <(kubectl completion zsh)

#pyenv
export PATH="/home/juandl/.dotnet/tools:$PATH"export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

bindkey -e
# Control + backspace
bindkey '^H' backward-kill-word

#wsl
alias explorer='explorer.exe .'

export PATH="$PATH:/opt/mssql-tools/bin"

alias access="cat ~/access"

ZSH_WEB_SEARCH_ENGINES=(
lambda "https://console.aws.amazon.com/lambda/home?region=us-east-1#/functions/"
)

alias lambda='web_search lambda'

alias tfw='terraform workspace show'
alias tfws='terraform workspace select'
