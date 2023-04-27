#!/bin/bash

sudo pacman -S --noconfirm neovim tmux alacritty git docker rustup \
	firefox neofetch ripgrep nodejs cmake starship

# neovim setup
git clone https://github.com/CreepyPvP/VimSetup ~/.config/nvim
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

# tmux setup
cp ./config/tmux.conf ~/.tmux.conf

# alacritty setup
mkdir ~/.config/alacritty
cp -R ./config/alacritty/ ~/.config/
git clone https://github.com/eendroroy/alacritty-theme.git ~/.config/alacritty/themes

# git setup
cp ./config/gitconfig ~/.gitconfig

# starship setup
rustup default stable
cp ./config/starship.toml ~/.config/starship.toml
# echo "eval \"$(starship init bash)\"" >> ~/.bashrc
