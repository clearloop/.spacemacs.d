# Package Managers
# ==================
# pkg
export PKG_CONFIG_PATH=$HOME/pkg_config
# gem
export GEM_HOME=$HOME/Library/gems
export GEM_PATH=$HOME/Library/gems
export PATH=$HOME/Library/gems/bin:$PATH

# brew
export GPG_TTY=$(tty)
export PATH=/usr/local/sbin:$PATH
export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.ustc.edu.cn/homebrew-bottles

# cargo
export PATH="/usr/local/opt/node@8/bin:$PATH"

# yarn
export PATH=/Users/mercury/.local/bin:$PATH
export PATH=$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH
export NETLIFY_AUTH_TOKEN=d9ce2ccd45fe2ecd11b3aa5fdc898cd4c46c3a204afa808642dbd83f46a236c9

# Language Settings
# =================
# Ruby
export PATH="/usr/local/opt/ruby/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/ruby/lib"
export CPPFLAGS="-I/usr/local/opt/ruby/include"
export PKG_CONFIG_PATH="/usr/local/opt/ruby/lib/pkgconfig"

# Go
export GOPATH=$HOME/Library/go
export PATH=$HOME/Library/go/bin:$PATH

# Applications Developing Tools
# =============================
# Android
export ANDROID_SDK_ROOT=/usr/local/share/android-sdk
export ANDROID_HOME=$ANDROID_SDK_ROOT
export PATH=$ANDROID_HOME/tools:$PATH
export PATH=$ANDROID_HOME/platform-tools:$PATH
export PATH=$ANDROID_SDK_ROOT/emulator:$PATH

# Flutter
export PATH=$PATH:$HOME/Library/flutter/bin
export PUB_HOSTED_URL=https://pub.flutter-io.cn
export FLUTTER_STORAGE_BASE_URL=https://storage.flutter-io.cn

# CITA
export CITA_HOME=$HOME/Library/cita
export CITA_PATH=$HOME/code/cita/target/install
export CITA_BIN=$CITA_PATH/bin
export PATH=$CITA_BIN:$PATH
