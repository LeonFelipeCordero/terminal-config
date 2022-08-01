export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel9k/powerlevel9k"
POWERLEVEL9K_MODE='nerdfont-complete'

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon dir newline status)
POWERLEVEL9K_OS_ICON_BACKGROUND=240 #navyblue
POWERLEVEL9K_OS_ICON_FOREGROUND=202 #orangered1
POWERLEVEL9K_CONTEXT_TEMPLATE='%n'
POWERLEVEL9K_CONTEXT_DEFAULT_FOREGROUND=249 # white
POWERLEVEL9K_DIR_HOME_FOREGROUND=249
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND=249
POWERLEVEL9K_DIR_ETC_FOREGROUND=249
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND=249
POWERLEVEL9K_DIR_HOME_BACKGROUND=024 #deepskyblue4a
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND=024 #deepskyblue4a
POWERLEVEL9K_DIR_ETC_BACKGROUND=024 #deepskyblue4a
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND=024 #deepskyblue4a

POWERLEVEL9K_STATUS_VERBOSE=true
POWERLEVEL9K_STATUS_CROSS=true
POWERLEVEL9K_STATUS_OK_BACKGROUND=203
POWERLEVEL9K_STATUS_ERROR_BACKGROUND=017

POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(vcs)
POWERLEVEL9K_VCS_CLEAN_FOREGROUND=017 # navyblue
POWERLEVEL9K_VCS_CLEAN_BACKGROUND=040 # green3a
POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND=017 # navyblue
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND=220 # gold1
POWERLEVEL9K_VCS_MODIFIED_FOREGROUND=236 #grey19
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND=160 #red3a
POWERLEVEL9K_SHOW_CHANGESET=true

plugins=(
	git
	zsh-autosuggestions
	zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# SDK man
# source "$HOME/.sdkman/bin/sdkman-init.sh"
#export GRADLE_USER_HOME=~/.gradle

# Pythin, Pyenv, Poetry and more
#export PYENV_ROOT="$HOME/.pyenv"
#export PATH="$PYENV_ROOT/bin:$PATH"
#eval "$(pyenv init --path)"
#eval "$(pyenv init -)"
#export PATH="$HOME/.poetry/bin:$PATH"
#source $HOME/.poetry/env
#export OPENBLAS="$(brew --prefix openblas)"

# Golang
export PATH=$PATH:$(go env GOPATH)/bin # macos
#export PATH=$PATH:/usr/local/go/bin # linux

# Android
#export ANDROID_HOME=$HOME/Library/Android/sdk
#export PATH=$PATH:$ANDROID_HOME/emulator
#export PATH=$PATH:$ANDROID_HOME/tools
#export PATH=$PATH:$ANDROID_HOME/tools/bin
#export PATH=$PATH:$ANDROID_HOME/platform-tools

# Node extras to keep in one version
#export PATH="/usr/local/opt/node@16/bin:$PATH"
#export LDFLAGS="-L/usr/local/opt/node@16/lib"
#export CPPFLAGS="-I/usr/local/opt/node@16/include"

# Flutter
#export PATH="$PATH:"$HOME/flutter/flutter/bin"
#export PATH="$PATH":"$HOME/.pub-cache/bin"

### MANAGED BY RANCHER DESKTOP START (DO NOT EDIT)
#export PATH=""$HOME/.rd/bin:$PATH"
