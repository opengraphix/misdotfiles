#!/bin/bash

set -e

echo "Instalando dotfiles..."
pushd `dirname $0` >> /dev/null
DOTFILES_DIR=`pwd -P`

cd $DOTFILES_DIR
pwd

echo "Instalando submodules..."
git submodule update --init --recursive

cd "$DOTFILES_DIR/scripts/bin/"
pwd

if [ `uname` == "Darwin" ]
then
    ./install-homebrew.sh
    PATH=/usr/local/bin/:$PATH
    ./install-homebrew-cask.sh
fi

echo "Instalando gnu stow (dotfile deploy tool)..."

if [ `uname` == "Darwin" ]
then
    brew install stow
else
    sudo apt-get install stow
fi

#echo "Symlinking in dot files..."
#if [ `uname` == "Darwin" ]
#then
#    stow --ignore="\.DS_Store" -d $DOTFILES_DIR -t $HOME -v 1 -S zsh -S vim -S git -S ctags -S scripts -S screen
#else
#    stow -d $DOTFILES_DIR -t $HOME --verbose=1 zsh vim git ctags scripts screen
#fi

cd "$DOTFILES_DIR/scripts/bin/"
pwd

if [ `uname` == "Darwin" ]
then
    ./install-homebrew-formulas.sh
    ./install-homebrew-cask-formulas.sh
    ./install-quick-look-plugins.sh
    ./install-monaco-font.sh
#    ./osx-set-defaults.sh
    ./zsh-set-as-default.sh
else
    sudo apt-get install zsh
    sudo chsh -s `which zsh` $USER
fi

touch $HOME/.vimrc_local
./install-vim-plugins.sh
mkdir -p ~/.vim/undodir

#./zsh-cache-nuke.sh
./install_ohmyzsh.sh

#Instalando spacemacs
./install_spacemacs.sh

cp $DOTFILES_DIR/.spacesmacs ~/

#Instalacion de vim
./install_vim.sh

echo "Ha terminado todo. ¡Reinicia tu terminal para efectuar los cambios en el shell!"
