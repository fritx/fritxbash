# personal private stuffs (-pre)
. ~/.bashrc_private_pre
. ~/.bashrc_include

export USER_HOME="/Users/$USER"

# vscode
# 支持code命令 打开vscode
# https://stackoverflow.com/questions/29963617/how-to-call-vs-code-editor-from-command-line
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

# nvm load
# brew install nvm
export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion" ] && . "/usr/local/opt/nvm/etc/bash_completion"  # This loads nvm bash_completion

# mirrows
export NVM_NODEJS_ORG_MIRROR=http://npm.taobao.org/mirrors/node
export ELECTRON_MIRROR=https://npm.taobao.org/mirrors/electron/

# sourcetree中 git提交pre-commit 报错node找不到
# https://juejin.im/post/5cbd790cf265da037a3cea95
alias openst='(/Applications/SourceTree.app/Contents/MacOS/SourceTree &)'

# alias
alias e='code'
alias e.='e .'
alias o='open'
alias o.='open .'
alias bse="e $FRITXBASH_PATH"
alias bss='. ~/.bashrc'
alias ni='npm i'
alias nt='npm test'
alias ns='npm start'
alias nr='npm run'
alias nb='nr build'
alias niif='npm init --force && echo package-lock=false >> .npmrc'
alias nd='nr dev'
alias b='brew'
alias bs='brew search'
alias bi='brew install'
alias bci='brew cask install'
alias ws='w2 start'
alias prs='pm2 resurrect'
alias fy='fanyi'
alias g='git'
alias gch='g checkout'
alias wh='which'
alias whapp='whichapp'
alias js='jayin'
alias j='cd'
alias ~='j ~'
alias ..='j ..'
alias ..2='j ../..'
alias ..3='j ../../..'
alias ..4='j ../../../..'

# pm2 & db
alias prs="pm2 resurrect"
alias mgd="mongod --config /usr/local/etc/mongod.conf"
alias rds="redis-server /usr/local/etc/redis.conf"

# docker
alias dps='docker ps'
alias dim='docker images'

# npm rush register
function npm_reg() {
  # ~/d is the directory where i develop
  cd ~/d
  mkd "$1"
  npm init -y
  # version `0.0.0` instead of `1.0.0`
  cat package.json | \
    js -to 'x.version = `0.0.0`, JSON.stringify(x, null, 2)+`\n`'  \
    > package.json
  npm publish
}

# short for imagemin
function imgmin() {
  imagemin $1 --out-dir .
}

# prepend text to file
# https://unix.stackexchange.com/questions/56975/whats-the-command-to-prepend-a-line-to-a-file
function prepend() {
  local text=$2
  local file=$1
  local tmpfile="$file.prepend.tmp"
  (echo $text; cat $file) > $tmpfile; mv $tmpfile $file
}

# personal private stuffs (-post)
. ~/.bashrc_private_post
