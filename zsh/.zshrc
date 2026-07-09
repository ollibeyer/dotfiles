# --- Pfade ---
export PATH=$HOME/.local/bin:$PATH
export EDITOR=nvim

# --- Oh-My-Zsh Basis ---
export ZSH="$HOME/.oh-my-zsh"

# --- Plugins: Das "Mitdenkende" Terminal ---
# Muss VOR source oh-my-zsh.sh stehen, sonst werden Plugins ignoriert
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

# --- Oh-My-Zsh laden ---
source $ZSH/oh-my-zsh.sh

# --- Industrial Aliase ---
alias nv='nvim'
alias tm='tmux'
alias gs='git status'
alias gl='git log'
alias vim='nvim'
alias top='htop'
alias cat='bat'
alias ls='eza --icons --group-directories-first'
alias co='copilot'

# --- Prompt: Starship (Cyberpunk-Look) ---
eval "$(starship init zsh)"

# --- Navigation: Zoxide (Intelligentes Verzeichnis-Wechseln) ---
eval "$(zoxide init zsh)"

# --- Performance-Fix für Syntax-Highlighting ---
# Damit das Terminal bei großen Git-Repos nicht ruckelt
ZSH_AUTOSUGGEST_STRATEGY=(history completion)

# --- History: Atuin (Intelligente Shell-History) ---
. "$HOME/.atuin/bin/env"
eval "$(atuin init zsh)"
