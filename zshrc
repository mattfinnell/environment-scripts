# General Exports
export ZSH=$HOME/.oh-my-zsh
export TERM="xterm-256color"
export EDITOR='vim'

DEFAULT_USER=$USER

# [ OH-MY-ZSH ] init oh-my-zsh
ZSH_THEME="agnoster"
plugins=(git virtualenvironment)
source $ZSH/oh-my-zsh.sh

# [ ALIAS ]
alias ls="ls -lh -G --color --group-directories-first"

# [ UTIL ] Check internet speed
alias speedtest='curl -s https://raw.githubusercontent.com/sivel/speedtest-cli/master/speedtest.py | python'

# [ UTIL ] Clear all dangling background processes
alias refresh="ps | grep zsh | cut -c 1-5 | sed '/'$$'/d' | xargs kill -9"

# [ UTIL ] for some reason I need this. IDK why
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# [ OSX ] OS Dependent stuff
if [ "$(uname)" == "Darwin" ]; then
    alias ls="/usr/local/bin/gls -lh -G --color --group-directories-first"
    alias vim="/Applications/MacVim.app/Contents/MacOS/Vim"
fi

# Uncomment this to fire up autoenv (requires autoenv)
# source ~/.autoenv/activate.sh
