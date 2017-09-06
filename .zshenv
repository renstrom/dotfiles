export ZSH="$HOME/.zsh"

export LANG='en_US.UTF-8'
export LC_ALL='en_US.UTF-8'

GOPATH="$HOME/.go"
CARGO_HOME="$HOME/.cargo"

PATH="/usr/local/sbin:$PATH"
PATH="$HOME/.bin:$PATH"
PATH="$PATH:$GOPATH/bin"
PATH="$PATH:$CARGO_HOME/bin"
PATH="$PATH:$HOME/.luarocks/bin"
case "$OSTYPE" in
    darwin*)
        PATH="$PATH:$HOME/Library/Python/3.6/bin:$HOME/Library/Python/2.7/bin" ;;
    linux*)
        PATH="$PATH:$HOME/.local/bin" ;;
esac
export PATH

GOPATH="$GOPATH:$HOME:$HOME/src/github.com/edgeware/monorepo"
export GOPATH

# Load custom Python start-up script
PYTHONSTARTUP="$HOME/.config/pythonrc"
export PYTHONSTARTUP

# Path to man pages
export MANPATH="/usr/local/man:$MANPATH"

# Default editor
export EDITOR='nvim'

export PAGER='less --no-init --quit-if-one-screen --raw-control-chars'
export LESS='-R'

# Add colors to `ls`
# export LSCOLORS=ExGxcxdxCxegedabagacad
export LSCOLORS=exgxcxdxcxegedabagacad
export CLICOLOR=1

# Don't create Python binary files
export PYTHONDONTWRITEBYTECODE=1

# Disables prompt mangling when activating a Python virtualenv
export VIRTUAL_ENV_DISABLE_PROMPT=1

# Report CPU usage for commands running longer than 10 seconds
export REPORTTIME=10

# https://github.com/junegunn/fzf#respecting-gitignore-hgignore-and-svnignore
export FZF_DEFAULT_COMMAND='rg --files'
export FZF_DEFAULT_OPTS="--color=16 --inline-info"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

if [ -f ~/.zshenv.local ]; then
    source ~/.zshenv.local
fi
