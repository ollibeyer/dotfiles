# --- Pfade ---
export PATH=$HOME/.local/bin:$PATH
export EDITOR=nvim

# --- Oh-My-Zsh Basis ---
export ZSH="$HOME/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh

# --- Plugins: Das "Mitdenkende" Terminal ---
# Hier laden wir die Plugins, die wir gerade installiert haben
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

# --- Industrial Aliase ---
alias nv='nvim'
alias tm='tmux'
alias gs='git status'
alias gl='git log'
alias vim='nvim'
alias top='htop'
alias cat='bat'
alias ls='eza --icons --group-directories-first'

# --- Prompt: Starship (Cyberpunk-Look) ---
eval "$(starship init zsh)"

# --- Performance-Fix für Syntax-Highlighting ---
# Damit das Terminal bei großen Git-Repos nicht ruckelt
ZSH_AUTOSUGGEST_STRATEGY=(history completion)
