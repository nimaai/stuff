# alias tmux='SHELL=$(which bash) tmux'
# alias vim='if [[ $(nightlight status) =~ off.* ]]; then nvim; else nvim -c "set background=dark"; fi'
alias bx='bundle exec'
alias code='nvim'
alias closh='nvm exec 9 closh'
alias darkmode="echo -ne \"\033]50;SetProfile=Solarized Dark\a\""
alias dc='docker compose'
alias e=$EDITOR
alias fig='lein figwheel'
alias lightmode="echo -ne \"\033]50;SetProfile=Solarized Light\a\""
alias ls='ls -G'
alias lsd1='lsd -1'
alias lsd='ls --group-directories-first'
alias novim='set -o emacs'
alias ovim='set -o vi'
alias rm='echo "Use trash!"; false'
alias sane='stty sane'
alias tmuxa='tmux a -t'
alias tmuxr='tmux start \; run-shell ~/.tmux/plugins/tmux-resurrect/scripts/restore.sh \; attach -t _misc'
alias trigger-ci="echo $(date) > _trigger_ci && git add _trigger_ci && git cm 'trigger ci' && git push"
alias vim='nvim'
alias vimd="vim -c 'set background=dark'"
