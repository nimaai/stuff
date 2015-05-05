set -o vi

export TERM=screen-256color
export FIREFOX_ESR_PATH=~/local/firefox-31.4.0esr/firefox
export ANDROID_HOME=~/Android/Sdk

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

if [ -z "$PS0" ]; then
  PS0=$PS1
fi

function update_prompt() {
  if [[ -n $(__git_ps1) ]]; then
    PS1=$PS0'\[\033[0;36m\]$(__git_ps1 "(%s)")\n$ \[\033[0m\]'
  else
    PS1=$PS0
  fi
}

PROMPT_COMMAND=update_prompt

if [ -f ~/.bash_aliases ]; then
  . ~/.bash_aliases
fi
