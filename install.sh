#!/bin/bash
# Lösche alte Dateien und setze Symlinks
ln -sf ~/dotfiles/nvim ~/.config/nvim
ln -sf ~/dotfiles/tmux.conf ~/.tmux.conf
ln -sf ~/dotfiles/zshrc ~/.zshrc
echo "Alle Konfigurationen wurden verlinkt!"
