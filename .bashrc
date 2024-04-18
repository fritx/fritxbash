# personal private stuffs (-pre)
. ~/.bashrc_private_pre
. ~/.bashrc_include
. ~/.bashrc_custom

# linux 解决"zsh: no matches found"
# https://blog.csdn.net/qq_36148847/article/details/79260745
setopt no_nomatch

# vscode
# 支持code命令 打开vscode
# https://stackoverflow.com/questions/29963617/how-to-call-vs-code-editor-from-command-line
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

# nvm load
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# pnpm
export PNPM_HOME="$HOME/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"
# pnpm end

# mirrows
export NVM_NODEJS_ORG_MIRROR=http://npm.taobao.org/mirrors/node
export ELECTRON_MIRROR=https://npm.taobao.org/mirrors/electron/

# nodejs memory limit
# https://www.npmjs.com/package/increase-memory-limit
export NODE_OPTIONS=--max_old_space_size=4096

# sourcetree中 git提交pre-commit 报错node找不到
# https://juejin.im/post/5cbd790cf265da037a3cea95
alias openst='(/Applications/SourceTree.app/Contents/MacOS/SourceTree &)'

# thefuck
# eval $(thefuck --alias)

# autojump
# [ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh

# pnpm
export PNPM_HOME="$HOME/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"
# pnpm end
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

# alias
alias v='vim'
alias co='code'
alias co.='code .'
alias e='code'
alias e.='e .'
alias o='open'
alias o.='open .'
alias bse="e $FRITXBASH_PATH"
alias bss='. ~/.bashrc'

# export NPM='npm'  # use npm
# export NPM='pnpm'  # use pnpm
# alias ni="$NPM i"  # prefer @antfu/ni
# alias nui="$NPM uninstall"  # prefer @antfu/nu
alias nt='npm test'
alias ns='npm start'
alias nw='nr watch'
# alias nr='npm run'
alias nb='nr build'
alias niif='npm init --force && echo package-lock=false >> .npmrc'
alias nd='nr dev'
alias y='yarn'
alias ya='yarn add'
alias yt='yarn test'
alias ys='yarn start'
alias yw='yarn watch'
alias yb='yarn build'
alias yd='yarn dev'
alias b='brew'
alias bs='brew search'
alias bi='brew install'
alias bci='brew cask install'
alias ws='w2 start'
alias prs='pm2 resurrect'
alias fy='fanyi'
# use zsh/plugins/git instead
# alias g='git'
# alias gch='g checkout'
# alias gspp="gsta && gup && gstp"
# alias gspp="gsta -u && gup && (gstp || true) && ga . && g reset ."
alias wh='which'
alias whapp='whichapp'
alias js='jayin'
alias f='fuck'
# alias j='autojump'
alias ~='cd ~'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'

# pm2 & db
alias prs="pm2 resurrect"
alias mgd="mongod --config /usr/local/etc/mongod.conf"
alias rds="redis-server /usr/local/etc/redis.conf"

# docker
alias dps='docker ps'
alias dim='docker images'
alias drm='docker rm'
alias dr='docker run'

# deno
export DENO_INSTALL="$HOME/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"

# flutter
# https://flutter.cn/docs/get-started/install/macos
export PATH="$PATH:$HOME/flutter/bin"
# Using Flutter in China
# https://docs.flutter.dev/community/china
# export PUB_HOSTED_URL=https://pub.flutter-io.cn
# export PUB_HOSTED_URL=https://pub.dev
# export FLUTTER_STORAGE_BASE_URL=https://storage.flutter-io.cn

# android studio
# https://developer.android.com/studio/command-line/variables
export ANDROID_HOME=~/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/tools/bin:$ANDROID_HOME/platform-tools
# sdkmanager
export PATH=$PATH:$ANDROID_HOME/cmdline-tools/latest/bin

# java jdk
# export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_102.jdk/Contents/Home
# export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_102.jdk/Contents/Home/jre

# Python3 edge-tts
export PATH=$PATH:$HOME/Library/Python/3.8/bin

# bin
export PATH="$PATH:$FRITXBASH_PATH/bin"

# jog
# https://github.com/natethinks/jog
# A simple script to print the last 10 commands you ran in this directory
# function zshaddhistory() {
# 	echo "${1%%$'\n'}⋮${PWD}   " >> ~/.zsh_history_ext
# }
# https://github.com/natethinks/jog/issues/5#issue-1049395388
alias plop='less ~/.zsh_history_ext | grep -a --color=never "${PWD}   " | cut -f1 -d"⋮" | tail'

# pyenv, official
# export PYENV_ROOT="$HOME/.pyenv"
# command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
# eval "$(pyenv init -)"

# if command -v pyenv &>/dev/null; then
#     eval "$(pyenv init -)"
# fi
# if command -v pyenv-virtualenv &>/dev/null; then
#     eval "$(pyenv virtualenv-init -)"
# fi

# pyenv, personal
# export PATH="$PATH:$HOME/.pyenv/shims"

# golang
# Update your PATH so that the protoc compiler can find the plugins:
# https://grpc.io/docs/languages/go/quickstart/
# export PATH="$PATH:$(go env GOPATH)/bin"
export GO_HOME=$HOME/go
export PATH="$PATH:$GO_HOME/bin"

# tmux
export TMUX_TMPDIR=~/.tmux/tmp

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
# bun completions
[ -s "$BUN_INSTALL/_bun" ] && source "$BUN_INSTALL/_bun"

# nue
# bun does not support older MacOS, use node instead
alias nu="node $(which nue)"

# personal private stuffs (-post)
. ~/.bashrc_private_post
