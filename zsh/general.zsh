# Prompt
export PS1="\w 🚀 > "

# Leading space does not store command in history
export HISTCONTROL=ignorespace
setopt HIST_IGNORE_SPACE

# Editor
export EDITOR=/usr/bin/vim
export VISUAL=$EDITOR

# Themes and Colors
ZSH_THEME="gallois"

#export CLICOLOR=1
#export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx

# Common Programs

## Less
### quit-if-one-screen and no-init will perform like cat for short files
export LESS='--ignore-case --quit-if-one-screen --no-init --hilite-unread -R'

# Aliases

## Util Aliases
#alias ll="ls -laF"
alias year="cal $(date +'%Y')"

## Common Directory Aliases
alias mycode='cd ~/code'
alias docs='cd ~/Documents'
alias pics='~/Pictures'
alias dls='cd ~/Downloads'

# Application Aliases
alias chrome="/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome"
alias chrome-canary="/Applications/Google\ Chrome\ Canary.app/Contents/MacOS/Google\ Chrome\ Canary"

# fns
DISABLE_AUTO_TITLE="true"
function title {
    echo -en "\e]1;$1\a"
}

function titleWin {
    echo -en "\e]2;$1\a"
}

# Node/NPM Aliases
alias npm-exec='PATH=$(npm bin):$PATH'
alias nombom='npm cache clear && bower cache clean && rm -rf node_modules bower_components && npm install && bower install'
alias purge-node-modules='find . -name node_modules -type d | xargs rm -rf'

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion" ] && . "/usr/local/opt/nvm/etc/bash_completion"  # This loads nvm bash_completion

# Yarn
#PATH="$PATH:`yarn global bin`"

# Completion
source /usr/local/share/zsh/site-functions/_aws

# JAVA Stuff
# Assumes a jdk8 symlink to an https://adoptopenjdk.net/index.html DL in ~/opt/java
export JAVA_HOME=~/opt/java/jdk8/Contents/Home
# Default macOS installer locations
# export JAVA_HOME=/Library/Java/JavaVirtualMachines/{javaVersion}/Contents/Home
# export JAVA_HOME=/Library/Java/Home
export M2_HOME=/usr/local/opt/maven
export M2=$M2_HOME/bin
#export MAVEN_OPTS=-Xms256m -Xmx1048m -XX:MaxPermSize=312M
export PATH=$JAVA_HOME/bin:$M2_HOME/bin:$PATH

# Groovy Stuff
export GROOVY_HOME=/usr/local/opt/groovy/libexec

# SSH
# Add the specified key to the ssh agent with an 10 hr expiry
# Don't forget to start the agent with eval "$(ssh-agent -s)"
alias add-daily-key='ssh-add -t "$((60 * 60 * 10))"'
