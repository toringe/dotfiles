TERM="xterm-256color"

POWERLEVEL9K_MODE='awesome-patched'
source  ~/powerlevel9k/powerlevel9k.zsh-theme
POWERLEVEL9K_SHORTEN_DIR_LENGTH=2
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_left"
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status virtualenv command_execution_time history)
POWERLEVEL9K_HISTORY_BACKGROUND='black'
POWERLEVEL9K_HISTORY_FOREGROUND='248'
POWERLEVEL9K_STATUS_OK_BACKGROUND='238'
POWERLEVEL9K_COMMAND_EXECUTION_TIME_FOREGROUND='black'
POWERLEVEL9K_COMMAND_EXECUTION_TIME_BACKGROUND='215'
POWERLEVEL9K_OS_ICON_FOREGROUND='183'
POWERLEVEL9K_PYTHON_ICON='\U1F40D'
POWERLEVEL9K_VIRTUALENV_BACKGROUND='212'

# Directory colors
LS_COLORS=…
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
if whence dircolors >/dev/null; then
  export LS_COLORS
  alias ls='ls --color'
else
  export CLICOLOR=1
  LSCOLORS=…
fi

alias cat='ccat'
alias ll='k'
alias openssl='/usr/local/opt/openssl/bin/openssl'

# Golang environment
export GOPATH=$HOME/gocode
export GOROOT=/usr/local/opt/go/libexec
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin

# My local bin folder
export PATH=$PATH:$HOME/bin

# Sbin
export PATH="/usr/local/sbin:$PATH"

# Virtual environments
export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python3
export WORKON_HOME=$HOME/.virtualenvs
source /usr/local/bin/virtualenvwrapper.sh

# Autoenv
source /usr/local/bin/activate.sh

# Use k (https://github.com/supercrabtree/k)
source $HOME/.k/k.sh

# Pyenv
export PYENV_ROOT=/usr/local/var/pyenv
eval "$(pyenv init -)"

# Pipenv
export PIPENV_PYTHON="$PYENV_ROOT/shims/python"
