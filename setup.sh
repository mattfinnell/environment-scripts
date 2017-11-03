# [ ZSH Configuration ]
apt-get install -y zsh

git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh

ln --symbolic zshrc ~/.zshrc

chsh -s /bin/zsh

# [ TMUX Configuration ]
apt-get install -y tmux

ln --symbolic tmux.conf ~/tmux.conf
