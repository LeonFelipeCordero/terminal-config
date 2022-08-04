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
sudo apt update
sudo apt install zsh-autosuggestions
```

```bash
sudo apt update
sudo apt install zsh-syntax-highlighting
```

for linux
```bash
chsh -s $(which zsh)
```

`NOTE: for the plugins it may be you need to clone the repositories intro the plugins folder in ~/.oh-my-zsh`

Copy the file .zsh in this repository to ~/.zshrc

