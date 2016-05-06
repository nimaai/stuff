set -o vi

export TERM=screen-256color
export FIREFOX_ESR_PATH=~/Applications/FirefoxESR.app/Contents/MacOS/firefox
export ANDROID_HOME=~/Android/Sdk
export PATH="$ANDROID_HOME/tools/:$ANDROID_HOME/platform-tools/:$PATH"
export PUSER=mkmit
export PGPASSWORD=mkmit

export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/latest/bin

eval "$(rbenv init -)"

parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1="\\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[32m\]\$(parse_git_branch)\[\033[m\] \$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
# alias ls='ls -GFh'

if [ -f ~/.bash_aliases ]; then
  . ~/.bash_aliases
fi
