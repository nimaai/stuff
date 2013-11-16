export PATH="$HOME/.rbenv/bin:$PATH"
export PATH="$HOME/bin:$PATH"
export CDPATH=~/symlinks
EDITOR=vim
export EDITOR

export _JAVA_OPTIONS="-Dawt.useSystemAAFontSettings=on"

eval "$(rbenv init -)"

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

if [ -f ~/.bashrc ]; then
    source ~/.bashrc
fi
