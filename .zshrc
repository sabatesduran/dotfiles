# Setting $PATH
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to the oh-my-zsh installation.
export ZSH=/home/didac/.oh-my-zsh

# ZSH theme to display.
ZSH_THEME="spaceship"

# Display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Disable marking untracked files as dirty.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# History time stamps
HIST_STAMPS="yyyy-mm-dd"

plugins=(git gitfast brew rbenv last-working-dir common-aliases sublime zsh-syntax-highlighting history-substring-search sudo)

source $ZSH/oh-my-zsh.sh
source $HOME/.zsh_exports
source $HOME/.zsh_aliases
export PATH="$PYENV_ROOT/bin:$PATH"
export PYENV_ROOT="$HOME/.pyenv"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
