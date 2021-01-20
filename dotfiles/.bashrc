export ANDROID_SDK=~/Library/Android/sdk
export DISABLE_DATABASE_ENVIRONMENT_CHECK=1
export EDITOR=nvim
export FIREFOX_ESR_45_PATH=/Applications/FirefoxESR\ 45.app/Contents/MacOS/firefox
export FIREFOX_ESR_60_PATH=/Applications/FirefoxESR\ 60.app/Contents/MacOS/firefox
export FIREFOX_ESR_78_PATH=/Applications/FirefoxESR\ 78.app/Contents/MacOS/firefox
export FIREFOX_ESR_PATH=$FIREFOX_ESR_78_PATH
export FIREFOX_PATH=/Applications/Firefox.app/Contents/MacOS/firefox
export LEIHS_SECRET=leihs
export NODE_PATH=/usr/local/lib/node_modules/
export PGPASSWORD=mkmit
export PROMPT_COMMAND='PS1X=$(p="${PWD#${HOME}}"; [ "${PWD}" != "${p}" ] && printf "~";IFS=/; for q in ${p:1}; do printf /${q:0:1}; done; printf "${q:1}")'
export PSQL_EDITOR=nvim
export PUSER=nitaai
export TERM=screen-256color

export PATH=~/Library/Android/sdk/platform-tools:$PATH
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/10/bin
export PATH=$PATH:/usr/local/opt/gnu-tar/libexec/gnubin
export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/opt/gnu-tar/libexec/gnubin:$PATH"
export PATH="/Applications/SWI-Prolog.app/Contents/MacOS:$PATH"

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
}

function export_leihs_db() {
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

###################################################################################

# export HISTFILE=~/.bash_history
# export HISTFILESIZE=500000
# export HISTSIZE=500000
export HISTCONTROL=ignoredups:erasedups
export HISTIGNORE='history *'
# shopt -s histappend

# unset PROMPT_COMMAND
# export PROMPT_COMMAND="history -n;history -w;history -c;history -r;$PROMPT_COMMAND"

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
  PATH="$HOME/bin:$PATH"
fi

export NVM_DIR="$HOME/.nvm"
. "/usr/local/opt/nvm/nvm.sh"

eval $(thefuck --alias)

if [[ "$(uname -s)" == "Darwin" ]]; then
  sith() {
    val=$(defaults read -g AppleInterfaceStyle 2>/dev/null)
    if [[ $val == "Dark" ]]; then
      i
    fi
  }

  i() {
    if [[ $ITERM_PROFILE == "Solarized Light" ]]; then
      echo -ne "\033]50;SetProfile=Solarized Dark\a"
      export ITERM_PROFILE="Solarized Dark"
    else
      echo -ne "\033]50;SetProfile=Solarized Light\a"
      export ITERM_PROFILE="Solarized Light"
    fi
  }

  sith
fi
