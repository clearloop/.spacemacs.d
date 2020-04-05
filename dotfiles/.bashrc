#  # emulator
#  function es() {
#      nohup emulator @avd &
#      open /Applications/Xcode.app/Contents/Developer/Applications/Simulator.app
#  }
#  
#  # ios
#  function ios() {
#      open /Applications/Xcode.app/Contents/Developer/Applications/Simulator.app
#  }
#  
#  function android() {
#      nohup emulator @avd &
#  }
#  
#  # @git: cleanfile
#  function cleanfile() {
#      files=$1
#      git filter-branch --force --index-filter \
#          "git rm -r --cached --ignore-unmatch $files" \
#          --prune-empty --tag-name-filter cat -- --all
#  }
#  
#  #bg
#  function bgd() {
#      cmd=$1
#      nohup $cmd > /dev/null 2>&1 &
#  }
#  
#  
#  function proxy() {
#      git config --global http.proxy 'socks5://127.0.0.1:1080'
#      git config --global https.proxy 'socks5://127.0.0.1:1080'
#  }
#  
#  function un_proxy() {
#      git config --global --unset http.proxy
#      git config --global --unset https.proxy
#  }
