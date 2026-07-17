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
* **Htop**: Zur interaktive Systemüberwachung.
* **zoxide**: Intelligenter `cd`-Ersatz, der besuchte Verzeichnisse nach Häufigkeit bewertet. Statt langer Pfade reicht `z <teilname>`.
* **atuin**: Ersetzt die Standard-Shell-History durch eine durchsuchbare SQLite-Datenbank – mit Zeitstempeln, Exit-Codes und Arbeitsverzeichnis pro Eintrag.

### 2. Terminal-Emulatoren & Fonts
Für das beste visuelle Erlebnis empfehle ich:
* **Font**: Eine **Nerd Font** (z.B. `JetBrainsMono Nerd Font`), um Symbole korrekt darzustellen.

## 🚀 Installation

```bash
git clone git@github.com:ollibeyer/dotfiles.git ~/dotfiles
cd ~/dotfiles
stow zsh tmux nvim starship
```

Das war es. Stow legt alle Symlinks ins Heimverzeichnis. Kein Skript, keine manuellen `ln`-Befehle.

## ⚙️ Architektur der Konfiguration

Das Repo ist in **Stow-Pakete** aufgeteilt – jedes Unterverzeichnis spiegelt exakt die Struktur von `$HOME`:

```
~/dotfiles/
├── zsh/
│   └── .zshrc                        → ~/.zshrc
├── tmux/
│   └── .tmux.conf                    → ~/.tmux.conf
├── starship/
│   └── .config/
│       └── starship.toml             → ~/.config/starship.toml
└── nvim/
    └── .config/
        └── nvim/                     → ~/.config/nvim/
            ├── init.lua
            └── lua/
```

* **`zsh/`**: Aliase, Pfad-Konfigurationen, zoxide- und atuin-Integration.
* **`tmux/`**: Fenster-Splits, Mouse-Support und `vim-tmux-navigator`.
* **`nvim/`**: Gesamte Neovim-Konfiguration (lazy.nvim, LSP, Copilot).
* **`starship/`**: Prompt-Konfiguration.

## 📦 Dotfiles mit GNU Stow verwalten

[GNU Stow](https://www.gnu.org/software/stow/) legt Symlinks an, indem es die Verzeichnisstruktur eines Pakets ins übergeordnete Verzeichnis (standardmäßig `$HOME`) spiegelt – ohne die Dateien selbst zu verändern.

### Symlinks setzen

```bash
cd ~/dotfiles

stow zsh        # legt ~/.zshrc an
stow tmux       # legt ~/.tmux.conf an
stow nvim       # legt ~/.config/nvim an
stow starship   # legt ~/.config/starship.toml an

# Oder alles auf einmal:
stow zsh tmux nvim starship
```

## 🤖 KI-Unterstützung

Dieses Setup nutzt **GitHub Copilot** als zentrale KI-Komponente im Editor.

- **GitHub Copilot CLI**: Als nativer Agent direkt im Terminal verfügbar. Er unterstützt dich bei komplexen Workflows, der Navigation in Codebasen und der Issue-Bearbeitung.
- **Copilot (Neovim)**  
  → Inline-Code-Vervollständigung direkt beim Schreiben  
  → Kontextbasierte Vorschläge im aktuellen Buffer  
  → Minimaler Overhead, keine zusätzlichen AI-Frameworks notwendig

## ✨ Philosophie dieses Setups

- **Minimal statt overengineered**  
- **Stabil statt experimentell**  
- **Schnell statt konfigurationslastig** 
