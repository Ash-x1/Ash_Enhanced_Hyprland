fastfetch

# ------------------------------
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# ------------------------------

# ------------------------------
# Completion (with cache)
zstyle :compinstall filename '/home/ash/.zshrc'
mkdir -p ~/.cache/zsh
autoload -Uz compinit
compinit -C -d ~/.cache/zsh/zcompdump
# ------------------------------

# ------------------------------
# Starship prompt
eval "$(starship init zsh)"
# ------------------------------

# ------------------------------
# Plugins
# Autosuggestions
# source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
# Syntax highlighting
# source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Plugins
source ~/.zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh


# ------------------------------

# ------------------------------
# NVM (lazy load)
export NVM_DIR="$HOME/.nvm"

lazy_nvm() {
  unset -f nvm node npm npx
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
  [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
}

nvm()  { lazy_nvm; nvm "$@"; }
node() { lazy_nvm; node "$@"; }
npm()  { lazy_nvm; npm "$@"; }
npx()  { lazy_nvm; npx "$@"; }
# ------------------------------

# eval "$(zoxide init zsh)"

eval "$(zoxide init zsh --cmd z)"

# eza alias
alias ls="eza --icons"


alias ll="eza -lh --icons"


alias la="eza -a --icons"


alias lla="eza -lha --icons"


alias lt="eza --tree --icons"


# default editor
export EDITOR="micro"
export VISUAL="micro"

# yazi alias
alias y="yazi"


export PATH="$HOME/.local/share/nvim/mason/bin:$PATH"

export PATH="$HOME/.cargo/bin:$PATH"

