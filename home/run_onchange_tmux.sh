#!/bin/sh
mkdir -p ~/.config/tmux
cd ~/.config/tmux/

user=$USER
user_home=$(bash -c "cd ~$(printf %q "$user") && pwd")
pathtoohmytmux="$user_home/temp/ohmytmux"

git clone https://github.com/gpakosz/.tmux.git "$pathtoohmytmux"
cp -n "$pathtoohmytmux/.tmux.conf" "$user_home/.config/tmux/tmux.conf"
cp -n "$pathtoohmytmux/.tmux.conf.local" "$user_home/.config/tmux/tmux.conf.local"