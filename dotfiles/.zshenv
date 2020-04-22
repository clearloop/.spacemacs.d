# Applications
# ============
export PATH=$HOME/Library/bin:$PATH

# Package Managers
# ==================
# pkg
export PKG_CONFIG_PATH=$HOME/pkg_config

# gem
export GEM_HOME=$HOME/Library/gems
export GEM_PATH=$HOME/Library/gems
export PATH=$HOME/Library/gems/bin:$HOME/.gem/ruby/2.6.0/bin:$PATH

# pub
export PATH=$HOME/.pub-cache/bin:$PATH

# brew
export GPG_TTY=$(tty)
export PATH=/usr/local/sbin:$PATH
export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.ustc.edu.cn/homebrew-bottles

# cargo
export PATH=$HOME/.cargo/bin:$PATH
export SCCACHE_CACHE_SIZE='20G'
export RUSTUP_DIST_SERVER='https://mirrors.tuna.tsinghua.edu.cn/rustup'

# yarn
export PATH=/Users/mercury/.local/bin:$PATH
export PATH=$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH
export NETLIFY_AUTH_TOKEN=d9ce2ccd45fe2ecd11b3aa5fdc898cd4c46c3a204afa808642dbd83f46a236c9

# Language Settings
# =================
# Node
export PATH="/usr/local/opt/node@12/bin:$PATH"
export PATH="$HOME/.config/npm/bin:$PATH"

# Ruby
export PATH="/usr/local/opt/ruby/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/ruby/lib"
export CPPFLAGS="-I/usr/local/opt/ruby/include"
export PKG_CONFIG_PATH="/usr/local/opt/ruby/lib/pkgconfig"

# Go
export GOPATH=$HOME/Library/go
export PATH=$HOME/Library/go/bin:$PATH
export GO111MODULE=on
export GOPROXY=https://goproxy.io

# WASM
export PATH=$HOME/code/binaryen/bin:$PATH

# Javascript
export REACT_APP_RUNTIME="web"

# Applications Developing Tools
# =============================
# Android
export ANDROID_SDK_ROOT=$HOME/Library/Android/sdk
export ANDROID_HOME=$ANDROID_SDK_ROOT
export PATH=$ANDROID_HOME/tools:$PATH
export PATH=$ANDROID_HOME/tools/bin:$PATH
export PATH=$ANDROID_HOME/platform-tools:$PATH
export PATH=$ANDROID_SDK_ROOT/emulator:$PATH

# Flutter
export PATH=$PATH:$HOME/Library/flutter/bin
export PUB_HOSTED_URL=https://pub.flutter-io.cn
export FLUTTER_STORAGE_BASE_URL=https://storage.flutter-io.cn


# PROXY
# =====
export no_proxy=localhost,127.0.0.1,0.0.0.0

# CODE
# ====
export CODE=/Volumes/Mercury/code
