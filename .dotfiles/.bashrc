# Package Managers
# ==================
# gem
export GEM_HOME=$HOME/.gem
export GEM_PATH=$HOME/.gem
export PATH=$HOME/.gem/bin:$PATH

# brew
export GPG_TTY=$(tty)
export PATH=/usr/local/sbin:$PATH
export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.ustc.edu.cn/homebrew-bottles

# cargo
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="/usr/local/opt/node@8/bin:$PATH"

# yarn
export PATH=/Users/mercury/.local/bin:$PATH
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export NETLIFY_AUTH_TOKEN=d9ce2ccd45fe2ecd11b3aa5fdc898cd4c46c3a204afa808642dbd83f46a236c9

# Language Settings
# =================
# Go
export GOPATH=$HOME/Library/go
export PATH=$HOME/Library/go/bin:$PATH

# Applications Developing Tools
# =============================
# Flutter
export PATH=$PATH:$HOME/Library/flutter/bin
export PUB_HOSTED_URL=https://dart-pub.mirrors.sjtug.sjtu.edu.cn/
export FLUTTER_STORAGE_BASE_URL=https://mirrors.sjtug.sjtu.edu.cn/

# Android
export ANDROID_SDK_ROOT=/usr/local/share/android-sdk
export ANDROID_HOME=$ANDROID_SDK_ROOT
export PATH=$ANDROID_HOME/tools:$PATH
export PATH=$ANDROID_HOME/platform-tools:$PATH
export PATH=$ANDROID_SDK_ROOT/emulator:$PATH
