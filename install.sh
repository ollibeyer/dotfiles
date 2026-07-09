#!/bin/bash
# Setzt alle Symlinks via GNU Stow.
# Voraussetzung: stow ist installiert (brew install stow / apt install stow)

cd "$(dirname "$0")"

PACKAGES=(zsh tmux nvim starship)

for pkg in "${PACKAGES[@]}"; do
  echo "Stowing $pkg..."
  stow --restow "$pkg"
done

echo "✅ Alle Konfigurationen wurden verlinkt!"
