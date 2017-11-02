# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
export TERM="xterm-256color"

DEFAULT_USER=$USER

ZSH_THEME="agnoster"
plugins=(git virtualenvironment)

source $ZSH/oh-my-zsh.sh

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='mvim'
fi

# My few and only aliases
alias ls="/usr/local/bin/gls -lh -G --color --group-directories-first"
alias python="python3.6"
alias vim="/Applications/MacVim.app/Contents/MacOS/Vim"

# Clear all dangling background processes
alias refresh="ps | grep zsh | cut -c 1-5 | sed '/'$$'/d' | xargs kill -9"

source ~/.autoenv/activate.sh

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# Check internet speed
alias speedtest='curl -s https://raw.githubusercontent.com/sivel/speedtest-cli/master/speedtest.py | python'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
