export ANDROID_HOME=~/Android/Sdk
export EDITOR=nvim
export FIREFOX_ESR_45_PATH=/Applications/FirefoxESR\ 45.app/Contents/MacOS/firefox
export FIREFOX_ESR_60_PATH=/Applications/FirefoxESR\ 60.app/Contents/MacOS/firefox
export FIREFOX_ESR_PATH=$FIREFOX_ESR_45_PATH
export NODE_PATH=/usr/local/lib/node_modules/
export PATH="$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools:$PATH"
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/latest/bin
export PATH=$PATH:/usr/local/opt/gnu-tar/libexec/gnubin
export PGPASSWORD=mkmit
export PROMPT_COMMAND='PS1X=$(p="${PWD#${HOME}}"; [ "${PWD}" != "${p}" ] && printf "~";IFS=/; for q in ${p:1}; do printf /${q:0:1}; done; printf "${q:1}")'
export PSQL_EDITOR=nvim
export PUSER=nitaai
export TERM=screen-256color

# Less Colors for Man Pages
export LESS_TERMCAP_mb=$'\E[01;31m' # begin blinking
export LESS_TERMCAP_md=$'\E[01;38;5;74m' # begin bold
export LESS_TERMCAP_me=$'\E[0m' # end mode
export LESS_TERMCAP_se=$'\E[0m' # end standout-mode
export LESS_TERMCAP_so=$'\E[38;5;246m' # begin standout-mode - info box
export LESS_TERMCAP_ue=$'\E[0m' # end underline
export LESS_TERMCAP_us=$'\E[04;38;5;146m' # begin underline

function export_db() {
  export DATABASE_URL="postgresql://localhost:5432/$1?min-pool-size=1&max-pool-size=16"
  export LEIHS_DATABASE_URL="jdbc:$DATABASE_URL"
}

function parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1="\[\033[0;35m\]\${PS1X}\[\033[m\]\[\033[34m\]\$(parse_git_branch)\[\033[m\] $ "

if [ -f ~/.bash_aliases ]; then
  . ~/.bash_aliases
fi

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# eval $(thefuck --alias)
PATH=/usr/local/opt/gnu-tar/libexec/gnubin:/Users/nitaai/Android/Sdk/tools:/Users/nitaai/Android/Sdk/platform-tools:/Users/nitaai/.rbenv/shims:/Users/nitaai/.jenv/bin:/usr/local/sbin:/Users/nitaai/Android/Sdk/tools:/Users/nitaai/Android/Sdk/platform-tools:/Users/nitaai/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/MacGPG2/bin:/Users/nitaai/.rbenv/shims:/Users/nitaai/.jenv/bin:/usr/local/sbin:/Users/nitaai/Android/Sdk/tools:/Users/nitaai/Android/Sdk/platform-tools:/Users/nitaai/bin:/Applications/Postgres.app/Contents/Versions/latest/bin:/usr/local/opt/gnu-tar/libexec/gnubin:/Users/nitaai/.fzf/bin:/Applications/Postgres.app/Contents/Versions/latest/bin:/usr/local/opt/gnu-tar/libexec/gnubin:/Applications/Postgres.app/Contents/Versions/latest/bin:/usr/local/opt/gnu-tar/libexec/gnubin
