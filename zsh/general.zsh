# Prompt
export PS1="\w 🚀 > "
export PROMPT=$PS1

# Editor
export EDITOR=/usr/bin/vim
export VISUAL=$EDITOR

# Colors
#export CLICOLOR=1
#export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx

# Common Programs
export LESS=-i

#Global aliases (ZSH Specific)
alias -g code='~/code'

# Aliases
#alias ll="ls -laF"
alias year="cal $(date +'%Y')"
alias code='cd ~/code'
alias docs='cd ~/Documents'

# Application Aliases
alias chrome="/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome"
alias chrome-canary="/Applications/Google\ Chrome\ Canary.app/Contents/MacOS/Google\ Chrome\ Canary"

# fns
function title {
    echo -en "\e]1;$1\a"
}

function titleWin {
    echo -en "\e]2;$1\a"
}

# Node/NPM Aliases
alias npm-exec='PATH=$(npm bin):$PATH'
alias nombom='npm cache clear && bower cache clean && rm -rf node_modules bower_components && npm install && bower install'

# NVM
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

# Yarn
#PATH="$PATH:`yarn global bin`"

# Completion
source /usr/local/share/zsh/site-functions/_aws

# JAVA Stuff
export JAVA_HOME=/Library/Java/Home
export M2_HOME=/usr/local/opt/maven
export M2=$M2_HOME/bin
#export MAVEN_OPTS=-Xms256m -Xmx1048m -XX:MaxPermSize=312M
export PATH=$JAVA_HOME/bin:$M2_HOME/bin:$PATH

# Add the specified key to the ssh agent with an 8 hr expiry
# Don't forget to start the agent with eval "$(ssh-agent -s)"
alias add-daily-key='ssh-add -t "$((60 * 60 * 8))"'
