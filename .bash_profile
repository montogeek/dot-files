
export NVM_DIR="/Users/montogeek/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

export PATH=/usr/local/php5/bin:$PATH
export PATH=~/.composer/vendor/bin:$PATH
export PATH=/usr/local/share/npm/bin:$PATH
export EDITOR=/usr/bin/subl
export HISTSIZE=""

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

# alias for quick DNS cache flushing
alias fc='sudo dscacheutil -flushcache'
alias ls='ls -lhaG'
alias glg='git log --date-order --all --graph --format="%C(green)%h%Creset %C(yellow)%an%Creset %C(blue bold)%ar%Creset %C(red bold)%d%Creset%s"'
alias ms='cd ~/Infinite/Monitores/New/Vagrant/source && git status'

# up 'n' folders
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'

# Vagrant
alias vm='cd ~/Infinite/Monitores/New/Vagrant && vagrant up && vagrant ssh'
alias vh='cd ~/Infinite/Homestead && vagrant up && vagrant ssh'
alias ve='vagrant halt && exit'

source ~/.git-prompt.sh
source ~/.git-completion

export GIT_PS1_SHOWDIRTYSTATE=1

function parse_git_branch () {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

BLACK="\[\033[0;30m\]"
BLACKBOLD="\[\033[1;30m\]"
RED="\[\033[0;31m\]"
REDBOLD="\[\033[1;31m\]"
GREEN="\[\033[0;32m\]"
GREENBOLD="\[\033[1;32m\]"
YELLOW="\[\033[0;33m\]"
YELLOWBOLD="\[\033[1;33m\]"
BLUE="\[\033[0;34m\]"
BLUEBOLD="\[\033[1;34m\]"
PURPLE="\[\033[0;35m\]"
PURPLEBOLD="\[\033[1;35m\]"
CYAN="\[\033[0;36m\]"
CYANBOLD="\[\033[1;36m\]"
WHITE="\[\033[0;37m\]"
WHITEBOLD="\[\033[1;37m\]"
RESETCOLOR="\[\e[00m\]"
NO_COLOUR="\[\033[0m\]"

PS1="$RED\u $GREEN\w $BLUE[\@]→ 👾 $CYAN\$(parse_git_branch)$NO_COLOUR 💣  "
