

# Plugins
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Aliases

# -- Eza (better ls) --
alias ls="eza --icons=always"

# -- Bat (better cat) --
alias cat="bat" # MacOS
alias cat="batcat" # Linux

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"
# export PATH="$PATH:/opt/nvim-linux-x86_64/bin"
# export PKG_CONFIG_PATH="/usr/local/opt/icu4c/lib/pkgconfig:/usr/local/opt/harfbuzz/lib/pkgconfig:$PKG_CONFIG_PATH"

# Version Manager for node.js
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Created by `pipx` on 2025-12-29 18:08:37
export PATH="$PATH:$HOME/.local/bin"
eval "$(starship init zsh)"
