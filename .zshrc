export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel9k/powerlevel9k"
POWERLEVEL9K_MODE='nerdfont-complete'

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon dir newline status)
POWERLEVEL9K_STATUS_VERBOSE=true
POWERLEVEL9K_STATUS_CROSS=true
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(vcs)
POWERLEVEL9K_SHOW_CHANGESET=true

plugins=(
	git
	zsh-autosuggestions
	zsh-syntax-highlighting
	asdf
)

source $ZSH/oh-my-zsh.sh

# SDK man
source "$HOME/.sdkman/bin/sdkman-init.sh"

# GraalVM
export GRAALVM_HOME="~/.sdkman/candidates/java/21.0.2-graalce/bin/"

# Pythin, Pyenv, Poetry and more
 export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# Golang
#export PATH=$PATH:$(go env GOPATH)/bin # macos
export PATH=$PATH:/usr/local/go/bin # linux

### MANAGED BY RANCHER DESKTOP START (DO NOT EDIT)
#export PATH=""$HOME/.rd/bin:$PATH"

export PATH=$PATH:$HOME/.local/bin
export PATH=$PATH:"/usr/local/bin/doctl"

# Rust
source "$HOME/.cargo/env"

# elixir
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

[[ -s "/home/leoncordero/.gvm/scripts/gvm" ]] && source "/home/leoncordero/.gvm/scripts/gvm"

# Local scripts
export PATH="$PATH:$HOME/workspace/projects/scripts"

# Local editor
export VISUAL=lvim
export EDITOR="$VISUAL"


# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

#asdf
. "$HOME/.asdf/asdf.sh"
fpath=(${ASDF_DIR}/completions $fpath)
autoload -Uz compinit && compinit

