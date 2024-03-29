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
alias newUuid="uuidgen | tr '[:upper:]' '[:lower:]'"

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

# Homebrew settings
homebrewRoot=`brew --prefix`
export HOMEBREW_NO_ANALYTICS=1

# Node/NPM Aliases
alias npm-exec='PATH=$(npm bin):$PATH'
alias nombom='npm cache clear && bower cache clean && rm -rf node_modules bower_components && npm install && bower install'
alias purge-node-modules='find . -name node_modules -type d | xargs rm -rf'

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Yarn
#PATH="$PATH:`yarn global bin`"

# Browser/Testing Setup
# Set chromium to dev channel and latest dev version
# Generally can be used when a specific version of chromium is needed
# Also used by ember-chromium to existence check and download chromium for Ember testing
export CHROMIUM_CHANNEL=dev
# Pull the latest version of chromium for mac on the $CHROMIUM_CHANNEL
export CHROMIUM_VERSION=$(curl "https://omahaproxy.appspot.com/mac?channel=${CHROMIUM_CHANNEL}")

# Playwright Testing
export PLAYWRIGHT_BROWSERS_PATH="$HOME/opt/pw-browsers"

# Completion
# AWS
awsBrewPath=`brew --prefix awscli`
if [ -d "$awsBrewPath" ]
then
    complete -C '${awsBrewPath}/bin/aws_completer' aws
else
    echo "Cannot locate awscli; Ignoring setting up autocomplete"
fi

# JAVA Stuff
# Assumes a jdk18 symlink to an https://adoptopenjdk.net/index.html DL in ~/opt/java
export JAVA_HOME="$HOME/opt/java/jdk18/Contents/Home"
# Default macOS installer locations
# export JAVA_HOME=/Library/Java/JavaVirtualMachines/{javaVersion}/Contents/Home
# export JAVA_HOME=/Library/Java/Home
export PATH=$JAVA_HOME/bin:$PATH
# Alias eclipse to set decent memory options and log redirection
# Assumes eclipse installed with `brew cask install eclipse-java`
# alias eclipse="nohup /Applications/Eclipse\ Java.app/Contents/MacOS/eclipse -vmargs -Xms512m -Xmx1024m -XX:PermSize=256m -XX:MaxPermSize=512m > '$TMPDIR/eclipseLog.txt' 2>&1 &"

# Maven Stuff
# Assumes maven has been installed with HomeBrew
export M2_HOME=/usr/local/opt/maven
export M2=$M2_HOME/bin
#export MAVEN_OPTS=-Xms256m -Xmx1048m -XX:MaxPermSize=312M
export PATH=$M2_HOME/bin:$PATH

# Groovy Stuff
export GROOVY_HOME=/usr/local/opt/groovy/libexec

# SSH
# Add the specified key to the ssh agent with an 10 hr expiry
# Don't forget to start the agent with eval "$(ssh-agent -s)"
alias add-daily-key='ssh-add -t "$((60 * 60 * 10))"'
