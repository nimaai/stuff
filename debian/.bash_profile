export PATH="$HOME/.rbenv/bin:$PATH"
export CDPATH=~/symlinks
EDITOR=vim
export EDITOR
alias e=$EDITOR

eval "$(rbenv init -)"

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

if [ -f ~/.bashrc ]; then
    source ~/.bashrc
fi
