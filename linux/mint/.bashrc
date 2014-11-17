set -o vi

export TERM=xterm-256color

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

PS1+='\[\033[0;36m\]$(__git_ps1 "(%s) ")\[\033[0m\]'
