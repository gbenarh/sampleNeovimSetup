# Sample Neovim Setup

## Installation.
- Two types of releases, stable and nightly.
- Stable Macos install  
$ `mkdir ~/neovim`  
$ `cd ~/neovim`  

Run the following command
```
curl -LO https://github.com/neovim/neovim/releases/download/v0.5.0/nvim-macos.tar.gz
tar xzf nvim-macos.tar.gz
./nvim-osx64/bin/nvim
```

- Nightly: Clone and Build  
$ `git clone https://github.com/neovim/neovim.git $HOME/neovim-nightly`  
$ `cd $HOME/neovim-nightly`

- compile the source using the Release type  
$ `make CMAKE_BUILD_TYPE=Release`

- add directory to path using following command and full path to app location eg /Users/yourname/neovim/build/bin  
$ `sudo nano /private/etc/paths`

## Config
- Add your config at $HOME/.config/nvim/init.vim  
$ `mkdir ~/.config/nvim`  
$ `touch ~/.config/nvim/init.vim`  

## Install vim-plug
$ `curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim`

- Source different customizations into the init.vim file
## plugins folder and file
$ `mkdir ~/.config/nvim/vim-plug`  
$ `touch ~/.config/nvim/vim-plug/plugins.vim`  

- edit the plugins.vim file and source the file in init.vim  
$ `source $HOME/.config/nvim/vim-plug/plugins.vim`

## Install general settings for nvim
$ `mkdir ~/.config/nvim/general`  
$ `touch ~/.config/nvim/general/settings.vim`  

- edit the settings.vim file and source the file in init.vim  
$ `source $HOME/.config/nvim/general/settings.vim`

## Mapping new keys
$ `mkdir ~/.config/nvim/keys`  
$ `touch ~/.config/nvim/keys/mappings.vim`  

- edit the mappings.vim file and source the file in init.vim  
$ `source $HOME/.config/nvim/keys/mappings.vim`

## Get healthy
- Open nvim and enter the following.  
`:checkhealth`

## Theme
- give the theme file the name of the theme you want to install eg. sainnhe-edge.vim  
$ `mkdir ~/.config/nvim/themes`  
$ `touch ~/.config/nvim/themes/sainnhe-edge.vim`  

- edit the sainnhe-edge.vim file and source the file in init.vim  
$ `source $HOME/.config/nvim/themes/sainnhe-edge.vim`

-NB: Remember to install changes to nvim by running  
`:PlugInstall`


## Update neovim nightly.
- For Stable version, just follow origin installation instructions to reinstall. To update neovim nightly.  
$ `cd $HOME/neovim-nightly`  
$ `git pull`  
$ `make distclean && make CMAKE_BUILD_TYPE=Release`  
