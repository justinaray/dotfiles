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
alias npm-exec='PATH=$(npm bin):$PATH'
alias code='cd ~/code'
alias docs='cd ~/Documents'

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
