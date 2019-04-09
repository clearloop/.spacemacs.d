# emulator
function es() {
    nohup emulator @avd &
    open /Applications/Xcode.app/Contents/Developer/Applications/Simulator.app
}

# proxy
function proxy() {
    if [ "$1" = "1" ]; then
        unset http_proxy
        unset https_proxy

        git config --global --unset http.proxy
        git config --global --unset https.proxy

        echo -e "\033[0;32mProxy off...\033[0m"
    else
        export http_proxy="http://127.0.0.1:1080"
        export https_proxy="http://127.0.0.1:1080"

        git config --global https.proxy "http://127.0.0.1:1080"
        git config --global https.proxy "https://127.0.0.1:1080"

        echo -e "\033[0;31mProxy on...\033[0m"
    fi
}

# serve
SITES=$HOME/Sites
function site() {
    if [[ -e $1 ]]; then
        nohup serve $SITES/$1 > $SITES/${1}.nohup 2>&1 &
        echo -e "\033[0;32mserve $1 ...\033[0m"
    else
        tail -f $SITES/.jobs/${1}.nohup
    fi
}


# cleanfile
function cleanfile() {
    files=$1
    git filter-branch --force --index-filter \
        "git rm --cached --ignore-unmatch $files" \
        --prune-empty --tag-name-filter cat -- --all
}
