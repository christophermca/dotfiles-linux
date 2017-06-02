#!/bin/bash
# symlink dotfiles

# Checks for bash dot files
if [ ! -L "$HOME/.profile" ]; then
  ln -s ~/Repos/dotfiles/.profile ~/.profile
fi

if [ ! -L "$HOME/.bashrc" ]; then
  ln -s ~/Repos/dotfiles/.bashrc ~/.bashrc
fi

if [ ! -L "$HOME/.inputrc" ]; then
  ln -s ~/Repos/dotfiles/.inputrc ~/.inputrc
fi

# Checks for vim dot files/folders
if [ ! -d "$HOME/.vim" ]; then
  ln -s ~/Repos/dotfiles/.vim/ ~/
fi

if [ ! -L "$HOME/.vimrc" ]; then
  ln -s ~/Repos/dotfiles/.vim/.vimrc ~/.vimrc
fi

if [ ! -L "$HOME/.vundle" ]; then
  ln -s ~/Repos/dotfiles/.vundle ~/.vundle
fi

# Checks for git dot files
if [ ! -L "$HOME/.gitconfig" ]; then
  ln -s ~/Repos/dotfiles/.gitconfig ~/.gitconfig
fi

# Checks for tmux dot files
if [ ! -L "$HOME/.tmux.conf" ]; then
  ln -s ~/Repos/dotfiles/.tmux.conf ~/.tmux.conf
fi

if [ ! -d "$HOME/.tmuxinator" ]; then
  ln -s ~/Repos/dotfiles/.tmuxinator/ ~/
fi

# Load .bashrc, containing non-login related bash initializations.
source ~/.bashrc

# Load .profile, containing login, non-bash related initializations.
source ~/.profile

# Load .cdtrc, containing only work related bash config and initializations.
if [ -f "$HOME/.cdtrc" ]; then
   source ~/.cdtrc
fi

# Load .workrc, containing only work related bash config and initializations.
if [ -f "$HOME/.workrc" ]; then
   source ~/.workrc
fi

# Load .tmuxinator, containing tmuxinator logic
if [ -f "$HOME/.bin/tmuxinator.bash" ]; then
  source ~/.bin/tmuxinator.bash
fi

export PATH="$PYENV_ROOT/bin:$PATH"
