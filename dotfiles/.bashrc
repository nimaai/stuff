eval "$(/opt/homebrew/bin/brew shellenv)"
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

if [ -f ~/.bash_aliases ]; then
  . ~/.bash_aliases
fi

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
  PATH="$HOME/bin:$PATH"
fi

if [ -f "$HOME/.inputrc" ]; then
  bind -f $HOME/.inputrc
fi

###################################################################################

function pg_set_10() {
  PGVERSION=10 && source ~/bin/pg_env_set
}

function pg_set_15() {
  PGVERSION=15 && source ~/bin/pg_env_set
}

function export_db() {
  export DATABASE_URL="postgresql://localhost:5415/$1?min-pool-size=1&max-pool-size=16"
}

function export_leihs_db() {
  export DATABASE_URL="postgresql://localhost:5415/$1?min-pool-size=1&max-pool-size=16"
  export LEIHS_DATABASE_URL="jdbc:$DATABASE_URL"
}

function parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

###################################################################################

# if [[ "$(uname -s)" == "Darwin" ]]; then
#   sith() {
#     val=$(defaults read -g AppleInterfaceStyle 2>/dev/null)
#     if [[ $val == "Dark" ]]; then
#       i
#     fi
#   }

#   i() {
#     if [[ $ITERM_PROFILE == "catppuccin-latte" ]]; then
#       echo -ne "\033]50;SetProfile=catppuccin-macchiato\a"
#       export ITERM_PROFILE="catppuccin-macchiato"
#     else
#       echo -ne "\033]50;SetProfile=catppuccin-latte\a"
#       export ITERM_PROFILE="catppuccin-latte"
#     fi
#   }

#   sith
# fi

###################################################################################

eval $(thefuck --alias)

. $HOME/.asdf/asdf.sh
. $HOME/.asdf/completions/asdf.bash

###################################################################################

# export ANDROID_SDK=~/Library/Android/sdk
export BASH_SILENCE_DEPRECATION_WARNING=1
export CATPPUCCIN_FLAVOUR=${ITERM_PROFILE/catppuccin-/}
export DISABLE_DATABASE_ENVIRONMENT_CHECK=1
export DISABLE_SECRETS_STRENGTH_CHECK=yes
export EDITOR=nvim
export FIREFOX_ESR_45_PATH=/Applications/FirefoxESR\ 45.app/Contents/MacOS/firefox
# export FIREFOX_ESR_60_PATH=/Applications/FirefoxESR\ 60.app/Contents/MacOS/firefox
export FIREFOX_ESR_78_PATH=/Applications/FirefoxESR\ 78.app/Contents/MacOS/firefox
export FIREFOX_ESR_PATH=$FIREFOX_ESR_45_PATH
export FIREFOX_PATH=/Applications/Firefox.app/Contents/MacOS/firefox
export HISTCONTROL=ignoredups:erasedups
export HISTIGNORE='history *'
export HOMEBREW_NO_ENV_HINTS=1
export LC_ALL=en_US.UTF-8
export LEIHS_SECRET=leihs
export LOCAL_CACHE_DIR=/Users/nitaai/tmp/leihs_dev_build_cache
export NVM_DIR="$HOME/.nvm"

export PGUSER=nitaai
export PG10USER=$PGUSER
export PG15USER=$PGUSER
export PGPASSWORD=nitaai
export PG10PASSWORD=$PGPASSWORD
export PG15PASSWORD=$PGPASSWORD
export PGPORT=5415
export PG10PORT=5410
export PG15PORT=$PGPORT

export PROMPT_COMMAND='PS1X=$(p="${PWD#${HOME}}"; [ "${PWD}" != "${p}" ] && printf "~";IFS=/; for q in ${p:1}; do printf /${q:0:1}; done; printf "${q:1}")'
export PS1="\[\033[0;35m\]\${PS1X}\[\033[m\]\[\033[34m\]\$(parse_git_branch)\[\033[m\] $ "
export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@1.1)"
export SELENIUM_URL=http://localhost:4444
export TERM=screen-256color

export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/15/bin
export PATH="/opt/homebrew/opt/gnu-tar/libexec/gnubin:$PATH"

# Less Colors for Man Pages
export LESS_TERMCAP_mb=$'\E[01;31m' # begin blinking
export LESS_TERMCAP_md=$'\E[01;38;5;74m' # begin bold
export LESS_TERMCAP_me=$'\E[0m' # end mode
export LESS_TERMCAP_se=$'\E[0m' # end standout-mode
export LESS_TERMCAP_so=$'\E[38;5;246m' # begin standout-mode - info box
export LESS_TERMCAP_ue=$'\E[0m' # end underline
export LESS_TERMCAP_us=$'\E[04;38;5;146m' # begin underline
