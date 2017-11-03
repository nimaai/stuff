set -o vi

export TERM=screen-256color
export EDITOR=vim
export ANDROID_HOME=~/Android/Sdk
export PATH="$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools:$PATH"
export PUSER=mkmit
export PGPASSWORD=mkmit
export FIREFOX_ESR_45_PATH=/Users/mkmit/Applications/FirefoxESR.app/Contents/MacOS/firefox
export FIREFOX_ESR_PATH=$FIREFOX_ESR_45_PATH
export NODE_PATH=/usr/local/lib/node_modules/

export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/latest/bin
export PATH=$PATH:/usr/local/opt/gnu-tar/libexec/gnubin

eval "$(rbenv init -)"

parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PROMPT_COMMAND='PS1X=$(p="${PWD#${HOME}}"; [ "${PWD}" != "${p}" ] && printf "~";IFS=/; for q in ${p:1}; do printf /${q:0:1}; done; printf "${q:1}")'

export PS1="# \[\033[33;1m\]\${PS1X}\[\033[m\]\[\033[34m\]\$(parse_git_branch)\[\033[m\] $ "
# export PS1="\\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[32m\]\$(parse_git_branch)\[\033[m\] \$ "

if [ $VIM ]; then
  export PS1="# \${PS1X}\$(parse_git_branch) $ "
  export CLICOLOR=0
fi

if [ -z $VIM ]; then
  export CLICOLOR=1
  export LSCOLORS=ExFxBxDxCxegedabagacad
fi

# alias ls='ls -GFh'

if [ -f ~/.bash_aliases ]; then
  . ~/.bash_aliases
fi

function dash() { open "dash://$1"; }

eval $(thefuck --alias)
