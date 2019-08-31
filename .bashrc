# personal private stuffs (-pre)
. ~/.bashrc_private_pre

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
alias bse='e ~/.bashrc'
alias bss='. ~/.bashrc'
alias ni='npm i'
alias nt='npm test'
alias ns='npm start'
alias nd='npm run dev'
alias bi='brew install'
alias bci='brew cask install'
alias ws='w2 start'
alias fy='fanyi'
alias gch='g checkout'
alias j='cd'
alias ~='j ~'
alias ..='j ..'
alias ..2='j ../..'
alias ..3='j ../../..'
alias ..4='j ../../../..'

# personal private stuffs (-post)
. ~/.bashrc_private_post
