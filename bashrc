PROMPT_COLOR='\e[00m\e[31;01;166m'
export PS1='\['$PROMPT_COLOR'\][\h]: \w\$\[\e[0m\] '
export EDITOR="mate -w"

MILLION=1000000
export HISTFILESIZE=$MILLION
export HISTSIZE=$MILLION

# update bash history after each command
export PROMPT_COMMAND="history -a"

export MPORTS_DIR=/opt/local/bin:/opt/local/sbin
# prefer macports stuff
PATH=$MPORTS_DIR:$PATH
#export EMACS='/opt/local/bin/emacs'

alias e=emacs
alias l='ls'

# I never remember to prefer pry
alias irb='pry'

source ~/.dotfiles/git-completion.bash

PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

PATH="/usr/local/mysql/bin:$PATH"
PATH="/Applications/Postgres.app/Contents/Versions/9.3/bin:$PATH"

if [ -f ~/.nvm/nvm.sh ]; then
  source ~/.nvm/nvm.sh
  nvm alias default 0.10 > /dev/null
fi

# Make new terminal tabs open in last directory.
PROMPT_COMMAND="update_terminal_cwd; $PROMPT_COMMAND"
