# Unix terminal config
This repository contains basic configuration and instructions to create a fluent a nice good looking terminal configuration for Unix.

## Good to look at
1. [MacOs](https://medium.com/@Clovis_app/configuration-of-a-beautiful-efficient-terminal-and-prompt-on-osx-in-7-minutes-827c29391961)
2. [Linux](https://medium.com/@christyjacob4/powerlevel9k-themes-f400759638c2)

## Setup
### Color Schema and Fonts
#### Linux
1) Create a folder in ~/.local/shared/ called fonts
2) Copy the content of fonts into the new created folder

### zsh and Oh My zsh and some plugins

```bash
sudo apt update
sudo apt install zsh
```

```bash 
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

```bash
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k"
```

```bash
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
```

for linux
```bash
chsh -s $(which zsh)
```

`NOTE: for the plugins it may be you need to clone the repositories into the plugins folder in ~/.oh-my-zsh`

Copy the file .zsh in this repository to ~/.zshrc

## Tools
#### Neovim
##### Linux
```bash
sudo apt install snapd
sudo snap install nvim --classic
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
Use gvm
```bash
sudo apt-get install busion
bash < <(curl -s -S -L https://raw.githubusercontent.com/moovweb/gvm/master/binscripts/gvm-installer)
gvm install :version
```
2. Enable go in .zshrc file.

### SDKMAN
```bash
curl -s "https://get.sdkman.io" | bash
```

#### LunarVim
https://www.lunarvim.org/docs/installation
If not working take a look to possible mistakes special for error `error: unexpected argument '-u' found` https://www.lunarvim.org/docs/troubleshooting
copy the configuration into ~/.config/lvim/config.lua
```lua
lvim.colorscheme = "nordic"

lvim.keys.normal_mode["<S-h>"] = ":bprevious<CR>"
lvim.keys.normal_mode["<S-l>"] = ":bnext<CR>"

lvim.plugins = {
  {"AlexvZyl/nordic.nvim"}
}
```

#### Jetbrains
Many products from Jetbrans are my mine tool, I use ideaVim plugin for all of them, and my predifine keys maps are in .ideavimrc

Copy .ideavimrc inside your user home directory `~/.ideavimrc`

#### Kitty
Copy kitty.conf into ~/.config/kitty/kitty.conf

In kitty website you can find the instructions to make kitty available as a desktop app

```bash
sudo apt install kitty
cp kitty.conf ~/.config/kitty/
```

#### Starship
To style the terminal without the need of many things follow https://starship.rs/guide/


#### Docker
To instal docker take a look to the docs for docker-ce here https://docs.docker.com/engine/install/ubuntu/

Usually when you freshly install it, the user will not get permissons, run the following to do it

```sh
sudo usermod -aG docker $USER
newgrp docker
```
