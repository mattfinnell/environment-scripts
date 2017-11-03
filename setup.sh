# [ VIM Configuration ]
git clone https://github.com/mattfinnell/vim-configuration.git ~/.vim

# [ TMUX Configuration ]
sudo apt-get install -y tmux

ln --symbolic $PWD/tmux.conf ~/.tmux.conf

# [ ZSH Configuration ]
sudo apt-get install -y zsh

git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh

ln --symbolic $PWD/zshrc ~/.zshrc

chsh -s /usr/bin/zsh $USER
