set -o vi

export TERM=screen-256color
export FIREFOX_ESR_PATH=~/local/firefox-31.4.0esr/firefox
export ANDROID_HOME=~/Android/Sdk

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

PS1+='\[\033[0;36m\]$(__git_ps1 "(%s) ")\[\033[0m\]'

if [ -f ~/.bash_aliases ]; then
  . ~/.bash_aliases
fi
