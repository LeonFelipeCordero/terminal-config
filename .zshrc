# change this to your path
export ZSH="/Users/leoncordero/.oh-my-zsh"

ZSH_THEME="powerlevel9k/powerlevel9k"

plugins=(
	git
	zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir rbenv vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator background_jobs history time)
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="%f"
local user_symbol="$"
if [[ $(print -P "%#") =~ "#" ]]; then
    user_symbol = "#"
fi
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="%{%B%F{black}%K{yellow}%} $user_symbol%{%b%f%k%F{yellow}%}ÓÇ∞ %{%f%}"
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND=red
POWERLEVEL9K_VCS_ACTIONFORMAT_FOREGROUND=yellow
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# SDK man
source "$HOME/.sdkman/bin/sdkman-init.sh"
export GRADLE_USER_HOME=~/.gradle

# Pythin, Pyenv, Poetry and more
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"
eval "$(pyenv init -)"
export PATH="$HOME/.poetry/bin:$PATH"
source $HOME/.poetry/env
export OPENBLAS="$(brew --prefix openblas)"

# Golang
export PATH=$PATH:$(go env GOPATH)/bin

# Android
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

# Node extras to keep in one version
export PATH="/usr/local/opt/node@16/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/node@16/lib"
export CPPFLAGS="-I/usr/local/opt/node@16/include"

# Flutter
export PATH="$PATH:/Users/leoncordero/flutter/flutter/bin"
export PATH="$PATH":"$HOME/.pub-cache/bin"

### MANAGED BY RANCHER DESKTOP START (DO NOT EDIT)
export PATH="/Users/leoncordero/.rd/bin:$PATH"
