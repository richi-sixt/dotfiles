

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
 
export PATH="$PATH:/opt/nvim-linux-x86_64/bin"
# export PKG_CONFIG_PATH="/usr/local/opt/icu4c/lib/pkgconfig:/usr/local/opt/harfbuzz/lib/pkgconfig:$PKG_CONFIG_PATH"

# Version Manager for node.js
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Created by `pipx` on 2025-12-29 18:08:37
export PATH="$PATH:$HOME/.local/bin"
eval "$(starship init zsh)"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# venv_wrapper 
# $ mkvenv myvirtualenv # creates venv under ~/.virtualenvs/
# $ venv myvirtualenv   # activates venv
# $ deactivate          # deactivates venv
# $ rmvenv myvirtualenv # removes venv

export VENV_HOME="$HOME/.virtualenvs"
[[ -d $VENV_HOME ]] || mkdir $VENV_HOME

lsvenv() {
  ls -1 $VENV_HOME
}

venv() {
  if [ $# -eq 0 ]
    then
      echo "Please provide venv name"
    else
      source "$VENV_HOME/$1/bin/activate"
  fi
}

mkvenv() {
  if [ $# -eq 0 ]
    then
      echo "Please provide venv name"
    else
      python3 -m venv $VENV_HOME/$1
  fi
}

rmvenv() {
  if [ $# -eq 0 ]
    then
      echo "Please provide venv name"
    else
      rm -r $VENV_HOME/$1
  fi
}
