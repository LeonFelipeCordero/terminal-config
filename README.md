# Unix terminal configuration
This repository contains basic configuration and instructions to create a fluent a nice good looking terminal configuration for Unix.


# Tooling
1. ZSH for shell
2. oh-my-zsh for themes and plugins
3. Starship for minimal terminal prompt
4. oh-my-zsh plugins (git, zsh-autosuggestions, zsh-syntax-highlighting)
5. kitty (optional) but nice to work with

## Setup
### Color Schema and Fonts
#### Linux
1) Create a folder in ~/.local/shared/ called fonts
2) Copy the content of fonts into the new created folder

### zsh and Oh My zsh + plugins

```bash
sudo apt update
sudo apt install zsh
```

Revisit latest urls in the official documentation
```bash 
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

`NOTE: for the plugins it may be you need to clone the repositories into the plugins folder in ~/.oh-my-zsh`
```bash
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
```

For Linux
```bash
chsh -s $(which zsh)
```
reboot

#### Configure zsh
Copy the content .zsh in this repository to ~/.zshrc

#### Kitty
Copy kitty.conf into ~/.config/kitty/kitty.conf

#### Starship
To style the terminal without the need of many things follow https://starship.rs/guide/

## Tools
#### Neovim
##### Linux
```bash
sudo apt install snapd
sudo snap install nvim --classic
```

#### LunarVim (Optional)
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

#### Lazynvim
```


#### NodeJs with nvm
Linux
```bash
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
```
install later the version using nvm

#### Golang with gvm
`NOTE: to go directly to latest golang version you need a recent version, either you go and install one by one or use your packag manager`
```bash
sudo apt-get install busion
bash < <(curl -s -S -L https://raw.githubusercontent.com/moovweb/gvm/master/binscripts/gvm-installer)
gvm install :version
```
2. Enable go in .zshrc file.

### Java with SDKMAN
```bash
curl -s "https://get.sdkman.io" | bash
```

#### Jetbrains
Many products from JetBrains are my mine tool, I use ideaVim plugin for all of them, and my predifined keys maps are in .ideavimrc

Copy .ideavimrc inside your user home directory `~/.ideavimrc`

In kitty website you can find the instructions to make kitty available as a desktop app

```bash
sudo apt install kitty
cp kitty.conf ~/.config/kitty/
```

#### Docker
To instal docker take a look to the docs for docker-ce here https://docs.docker.com/engine/install/ubuntu/

Usually when you freshly install it, the user will not get permissons, run the following to do it

```sh
sudo usermod -aG docker $USER
newgrp docker
```


#### Intellij in tailing windows
Sometimes intellij or JetBrains products have issues with tailing windows or some linux desktop environments such as COSMIC from PopOS. Adding this properties to the custom VM options could solve it
Help -> Edit Custom VM Options
```
```
-Dawt.toolkit.name=WLToolkit
-Dsun.java2d.vulkan=true
-Dsun.java2d.vulkan.accelsd=true
```
```
