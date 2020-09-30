# Colorful terminal
TERM="xterm-256color"

# Powerlevel9k Theme
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

# Zsh completions
if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh-completions:$FPATH
  autoload -Uz compinit
  compinit
fi

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

# Custom aliases
alias cat='ccat'
alias ll='k'
alias openssl='/usr/local/opt/openssl/bin/openssl'

# Use k (https://github.com/supercrabtree/k)
source $HOME/.k/k.sh

# My local bin folder
export PATH=$PATH:$HOME/bin

# Golang environment
export GOPATH=$HOME/gocode
export GOROOT=/usr/local/opt/go/libexec
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin

# Pyenv: set path
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"

# Pyenv: enable shims and autocompletion
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
  eval "$(pyenv virtualenv-init -)"
fi
