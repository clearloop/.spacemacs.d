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

# tests
alias darwinia="/Volumes/Mercury/code/darwinia-common/target/release/node-template"

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

function itering() {
    export http_proxy=http://192.168.200.253:8080
    export https_proxy=http://192.168.200.253:8080
}

function es() {
    nohup emulator @avd &
    open /Applications/Xcode.app/Contents/Developer/Applications/Simulator.app
}

function ios() {
    open /Applications/Xcode.app/Contents/Developer/Applications/Simulator.app
}

function android-s() {
    nohup emulator @avd &
}

function cmx() {
    defaults write com.macpaw.zh.CleanMyMac4 AppleLanguages '("en")'
}

function grarb() {
    git branch -r | grep 'origin' | grep -v 'master$' | grep -v HEAD | cut -d/ -f2- | while read line; do git push origin :heads/$line; done;
}

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/mercury/.sdkman"
[[ -s "/Users/mercury/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/mercury/.sdkman/bin/sdkman-init.sh"
