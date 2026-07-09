#!/bin/bash
# Setzt alle Symlinks via GNU Stow.
# Voraussetzung: stow ist installiert (brew install stow / apt install stow)

set -e
cd "$(dirname "$0")"

# Entferne alte Symlinks, die noch auf die pre-Stow-Pfade zeigen.
# Stow lehnt Targets ab, die es nicht selbst verwaltet.
OLD_LINKS=(
  "$HOME/.zshrc"
  "$HOME/.tmux.conf"
  "$HOME/.config/nvim"
  "$HOME/.config/starship.toml"
)

for link in "${OLD_LINKS[@]}"; do
  if [ -L "$link" ]; then
    echo "Removing old symlink: $link"
    rm "$link"
  fi
done

PACKAGES=(zsh tmux nvim starship)

for pkg in "${PACKAGES[@]}"; do
  echo "Stowing $pkg..."
  stow --restow "$pkg"
done

echo "✅ Alle Konfigurationen wurden verlinkt!"
