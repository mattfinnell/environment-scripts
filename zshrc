# General exports
export ZSH=$HOME/.oh-my-zsh
export TERM="xterm-256color"
export EDITOR='vim'

DEFAULT_USER=$USER

# [ OH MY ZSH ]
ZSH_THEME="agnoster"
plugins=(git virtualenvironment)

source $ZSH/oh-my-zsh.sh


# [ UTIL ] Aparently I need nvm for bash completion.
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Uncomment the following to Init python autoenv (requires autoenv)
#
# source ~/.autoenv/activate.sh

# [ UTIL ] Check internet speed
alias speedtest='curl -s https://raw.githubusercontent.com/sivel/speedtest-cli/master/speedtest.py | python'

# [ UTIL ] Clear all dangling background processes
alias refresh="ps | grep zsh | cut -c 1-5 | sed '/'$$'/d' | xargs kill -9"

# [ ALIAS ] make ls output as a list
alias ls="ls -lh --color --group-directories-first"

# [ OSX Specific ]
if [ "$(uname)" == "Darwin" ]; then
    alias ls="/usr/local/bin/gls -lh -G --color --group-directories-first"
    alias vim="/Applications/MacVim.app/Contents/MacOS/Vim"
fi
