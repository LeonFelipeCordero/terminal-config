# Unix terminal config
This repository contains basic configuration and instructions to create a fluent a nice good looking terminal configuration for Unix.

## Good to look at
1. [MacOs](https://medium.com/@Clovis_app/configuration-of-a-beautiful-efficient-terminal-and-prompt-on-osx-in-7-minutes-827c29391961)
2. [Linux](https://medium.com/@christyjacob4/powerlevel9k-themes-f400759638c2)

## Setup
### Color Schema and Fonts
1. Change the colors schema as you would like
2. Download Nerd font (e.g. hacker), for linux make sure you Download a mono version.

### zsh and Oh My zsh and some plugins

```bash
sudo apt update
sudo apt install zsh
```

```bash 
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

```bash
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
```

```bash
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
```

for linux
```bash
chsh -s $(which zsh)
```

`NOTE: for the plugins it may be you need to clone the repositories intro the plugins folder in ~/.oh-my-zsh`

Copy the file .zsh in this repository to ~/.zshrc

## Tools
#### Neovim
##### Linux
```bash
sudo apt install snapd
sudo snap --classic nvim
```

#### Rust
```bash
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
cargo install stylua
```
enable `source "$HOME/.cargo/env"` in .zshrc

#### Python / Pip
Linux
```bash
sudo apt-get -y install python3-pip
pip install black
pip install flake8
```

#### NodeJs
Linux
```bash
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
```
install later the version using nvm

#### Golang
1. Download latest version https://go.dev/doc/install
2. Enable go in .zshrc file.

### SDKMAN
```bash
curl -s "https://get.sdkman.io" | bash
```

#### LunarVim
```bash
bash <(curl -s https://raw.githubusercontent.com/lunarvim/lunarvim/master/utils/installer/install.sh)
```
if not working add execulable in %HOME/.local/bin to PATH

#### Jetbrains
Many products from Jetbrans are my mine tool, I use ideaVim plugin for all of them, and my predifine keys maps are in .ideavimrc

Copy .ideavimrc inside your user home directory `~/.ideavimrc`

#### Kitty
Copy kitty.conf into ~/.config/kitty/kitty.conf
```bash
sudo apt install kitty
cp kitty.conf ~/.config/kitty/
```

