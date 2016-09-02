#!/bin/bash
echo "Instalando vim ..."
cd $HOME
git clone https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_basic_vimrc.sh

echo"Instalacion de vim terminada."
