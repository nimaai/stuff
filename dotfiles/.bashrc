set -o vi

export ANDROID_HOME=~/Android/Sdk
export EDITOR=vim
export FIREFOX_ESR_45_PATH=/Users/mkmit/Applications/FirefoxESR.app/Contents/MacOS/firefox
export FIREFOX_ESR_PATH=$FIREFOX_ESR_45_PATH
export NODE_PATH=/usr/local/lib/node_modules/
export PATH="$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools:$PATH"
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/latest/bin
export PATH=$PATH:/usr/local/opt/gnu-tar/libexec/gnubin
export PGPASSWORD=mkmit
export PROMPT_COMMAND='PS1X=$(p="${PWD#${HOME}}"; [ "${PWD}" != "${p}" ] && printf "~";IFS=/; for q in ${p:1}; do printf /${q:0:1}; done; printf "${q:1}")'
export PUSER=mkmit
export TERM=screen-256color

HISTCONTROL=ignoreboth

eval "$(rbenv init -)"

parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1="\[\033[0;35m\]\${PS1X}\[\033[m\]\[\033[34m\]\$(parse_git_branch)\[\033[m\] $ "
# export PS1="\[\033[0;36m\][\A] \[\033[4;30m\]\${PS1X}\[\033[m\]\[\033[34m\]\$(parse_git_branch)\[\033[m\] $ "

if [ -f ~/.bash_aliases ]; then
  . ~/.bash_aliases
fi

eval $(thefuck --alias)

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
