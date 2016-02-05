#!/bin/bash


mkdir -p ~/.config/fish/functions

config_dir=~/dev/dotfiles/fish
ln -fs $config_dir/config.fish ~/.config/fish/
ln -fs $config_dir/functions/fish_prompt.fish ~/.config/fish/functions/
ln -fs $config_dir/functions/fish_title.fish  ~/.config/fish/functions/
