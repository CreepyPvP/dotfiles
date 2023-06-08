#!/bin/bash

sudo pacman -S --noconfirm neovim tmux alacritty git docker rustup \
	firefox neofetch ripgrep nodejs cmake npm


# font 
sudo pacman -S --noconfirm extra/ttf-cascadia-code-nerd

# zsh
sudo pacman -S --noconfirm zsh
chsh -s $(which zsh)
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

cp ./config/zshrc ~/.zshrc


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
# rustup default stable
# cp ./config/starship.toml ~/.config/starship.toml
# echo "eval \"$(starship init bash)\"" >> ~/.bashrc
