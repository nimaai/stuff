alias e=$EDITOR
alias bx='bundle exec'
alias gl='BUNDLE_GEMFILE=Gemfile.local'
alias et='RAILS_ENV=test'
alias ed='RAILS_ENV=dev'
alias c='cucumber -p default'
alias tbx='et be'
alias tbxc='et be cucumber'
alias tbxr='et be rspec'
alias dbx='ed be'
alias rspec='rspec --format documentation'
alias sudo='sudo '
alias zls='wfica ~/launch.ica'
alias npm-exec='PATH=$(npm bin):$HOME/node_modules/.bin:$PATH'
alias leinrp='cat .nrepl-port | xargs lein repl :start :port'
alias rm='echo "This is not the command you are looking for."; false'
alias lsd='ls --group-directories-first'
alias lsd1='lsd -1'
alias vim='vim "+:cd $(pwd)"'
alias vims='vim -S $(pwd)/Session.vim'
alias tr='trash'
alias tmuxr='tmux start-server \; run-shell /home/nimaai/.tmux/plugins/tmux-resurrect/scripts/restore.sh \; attach -t 0'
