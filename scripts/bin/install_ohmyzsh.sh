#!/bin/sh

set -e

echo "Instalando Oh my zsh!"

cd $HOME
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo "Ha terminado la instalacion"
