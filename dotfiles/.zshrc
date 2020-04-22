# system
# ======
export PS1=' 𝝺 '
export TERM="xterm-256color"

# cmds
# ====
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias e="emacsclient"
alias scm="scheme --script"
alias ss="scheme"
alias rb="ruby"
alias cl="clisp"
alias py="python3"
alias pip="pip3"
alias pcs="proxychains4 -q"
alias code="cd /Volumes/Mercury/code"
alias chrome="/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome"

# proxy
# =====
# alias proxy='export all_proxy=socks5://127.0.0.1:1080'
# alias unproxy='unset all_proxy'

# functions
# =========
function proxy() {
    export ALL_PROXY='socks5://127.0.0.1:1080'
    export HTTP_PROXY='socks5://127.0.0.1:1080'
    export HTTPS_PROXY='socks5://127.0.0.1:1080'
    curl cip.cc
}

function unproxy() {
    unset ALL_PROXY
    unset HTTP_PROXY
    unset HTTPS_PROXY
    curl cip.cc
}
