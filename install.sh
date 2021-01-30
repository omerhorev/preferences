#!/bin/bash

sudo apt-get install qterminal i3 zsh

# Setup zsh and oh-my-zsh
cp ohmyzsh ~/.oh-my-zsh -rf
cp zsh/.zshrc ~ -f
chsh -s /bin/zsh

# Setup qterminal
cp qterminal/qterminal.ini ~/.config/qterminal.org/ -f
sudo cp qterminal/ayu.colorscheme /usr/share/qtermwidget5/color-schemes/ -f

# Setup theme for gnome-terminal (if ubuntu)
dconf load /org/gnome/terminal/legacy/profiles:/:b1dcc9dd-5262-4d8d-a863-c897e6d979b9/ < gnome-terminal/theme.dconf

# Setup i3
[ ! -d ~/.config/ig ] && mkdir ~/.config/i3
[ ! -d ~/.config/ig ] && mkdir ~/.config/i3status
cp i3/config ~/.config/i3/ -f
cp i3status/config ~/.config/i3status/ -f

gnome-session-quit --no-prompt 
