# emulator
function es() {
    nohup emulator @Pixel_2_API_28 &
    open /Applications/Xcode.app/Contents/Developer/Applications/Simulator.app
}

# proxy
function git_proxy_on(){
    git config --global https.proxy 'http://127.0.0.1:1080'
    git config --global https.proxy 'https://127.0.0.1:1080'
    git config --global http.proxy 'socks5://127.0.0.1:1080' 
    git config --global https.proxy 'socks5://127.0.0.1:1080'
    echo -e "git proxy on"
}

function git_proxy_off(){
    git config --global --unset http.proxy
    git config --global --unset https.proxy
    echo -e "git proxy off"
}

function http_proxy_on(){
    export http_proxy="http://127.0.0.1:1080"
    export https_proxy="http://127.0.0.1:1080"
}

function http_proxy_off(){
    unset http_proxy
    unset https_proxy
}
