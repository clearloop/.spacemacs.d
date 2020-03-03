#system
export PS1=' 𝝺 '
export TERM="xterm-256color"

# cmd
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias e="emacs"
alias el="$HOME/code/elvis.js/packages/elvis-cli/index.ts"
alias elj="$HOME/code/elvis.js/packages/elvis-cli/lib/index.js"
alias pcs="proxychains4 -q"
alias scm="scheme --script"
alias ss="scheme"
alias rb="ruby"
alias cl="clisp"
alias py="python3"
alias pip="pip3"
alias rdb="rethinkdb"
alias nt="ts-node"
alias blog="cd $HOME/code/clearloop.github.io"
alias chrome="/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome"

# bashrc
[[ -s ~/.bashrc ]] && source ~/.bashrc
[[ -s ~/.profile ]] && source ~/.profile
