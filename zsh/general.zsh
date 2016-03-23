#Prompt
export PS1="\w 🚀 > "

#Colors
#export CLICOLOR=1
#export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx

#Global aliases (ZSH Specific)
alias -g code='~/code'

#Aliases
#alias ll="ls -laF"
alias year="cal $(date +'%Y')"
alias code='cd ~/code'
alias docs='cd ~/Documents'

# Node/NPM Aliases
alias npm-exec='PATH=$(npm bin):$PATH'
alias nombom='npm cache clear && bower cache clean && rm -rf node_modules bower_components && npm install && bower install'

#fns
function title {
    echo -en "\e]1;$1\a"
}

function titleWin {
    echo -en "\e]2;$1\a"
}

#NVM
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh