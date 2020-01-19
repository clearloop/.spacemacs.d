#system
export PS1=' 𝝺 '
export TERM="xterm-256color"

# cmd
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias e="emacs"
alias pcs="proxychains4 -q"
alias scm="scheme --script"
alias ss="scheme"
alias rb="ruby"
alias cl="clisp"
alias py="python3"
alias pip="pip3"
alias rdb="rethinkdb"
alias blog="cd $HOME/code/clearloop.github.io"
alias chrome="/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome"

# bashrc
[[ -s ~/.bashrc ]] && source ~/.bashrc
[[ -s ~/.profile ]] && source ~/.profile
if [ -e /Users/mercury/.nix-profile/etc/profile.d/nix.sh ]; then . /Users/mercury/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer
# export PATH="$HOME/.cargo/bin:$PATH"

export PATH="$HOME/.cargo/bin:$PATH"

# Created by mirror-config-china
export IOJS_ORG_MIRROR=https://npm.taobao.org/mirrors/iojs
export NODIST_IOJS_MIRROR=https://npm.taobao.org/mirrors/iojs
export NVM_IOJS_ORG_MIRROR=https://npm.taobao.org/mirrors/iojs
export NVMW_IOJS_ORG_MIRROR=https://npm.taobao.org/mirrors/iojs
export NODEJS_ORG_MIRROR=https://npm.taobao.org/mirrors/node
export NODIST_NODE_MIRROR=https://npm.taobao.org/mirrors/node
export NVM_NODEJS_ORG_MIRROR=https://npm.taobao.org/mirrors/node
export NVMW_NODEJS_ORG_MIRROR=https://npm.taobao.org/mirrors/node
export NVMW_NPM_MIRROR=https://npm.taobao.org/mirrors/npm
# End of mirror-config-china
