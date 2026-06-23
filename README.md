# My Dotfiles

Willkommen in meiner personalisierten Arbeitsumgebung. Dieses Setup basiert auf einem terminal-zentrierten Workflow, der Modularität, Resilienz und maximale Effizienz priorisiert.

## 🛠 Voraussetzungen

Bevor du die Konfigurationen verlinkst, stelle sicher, dass die folgenden Pakete auf deinem System installiert sind:

### 1. Grundlegende Werkzeuge
* **Zsh**: Als primäre Shell.
* **Tmux**: Als Terminal-Multiplexer für persistente Sessions.
* **Neovim (v0.11+)**: Als Haupteditor für das Programmieren.
* **Git**: Zur Verwaltung dieses Repositories.
* **Ripgrep**: Für schnelle textbasierte Suchen.
* **Fzf**: Für Fuzzy-Finding.
* **Htop**: Zur interaktiven Systemüberwachung.
* **GitHub CLI (gh)**: Für die Authentifizierung von GitHub Copilot.

### 2. Terminal-Emulatoren & Fonts
Für das beste visuelle Erlebnis empfehle ich:
* **Terminal**: Alacritty oder Kitty.
* **Font**: Eine **Nerd Font** (z.B. `JetBrainsMono Nerd Font`), um Symbole korrekt darzustellen.

## 🚀 Installation

Um die Konfigurationen zu aktivieren, führe das mitgelieferte Installationsskript aus:

```bash
git clone git@github.com:DEIN_USER/dotfiles.git ~/dotfiles
cd ~/dotfiles
chmod +x install.sh
./install.sh
```
## ⚙️ Architektur der Konfiguration

* **`nvim/`**: Enthält die gesamte Neovim-Konfiguration.
* **`tmux.conf`**: Konfiguration für Fenster-Splits, Mouse-Support und `vim-tmux-navigator`.
* **`zshrc`**: Enthält Aliase, Pfad-Konfigurationen und die Logik für das automatische Attachen an `tmux`.

## 🤖 KI-Unterstützung

Dieses Setup nutzt **GitHub Copilot** als zentrale KI-Komponente im Editor.

- **Copilot (Neovim)**  
  → Inline-Code-Vervollständigung direkt beim Schreiben  
  → Kontextbasierte Vorschläge im aktuellen Buffer  
  → Minimaler Overhead, keine zusätzlichen AI-Frameworks notwendig  

---

## ✨ Philosophie dieses Setups

- **Minimal statt overengineered**  
- **Stabil statt experimentell**  
- **Schnell statt konfigurationslastig** 

