#!/bin/sh

set -e

echo "Instalando homebrew"

if test ! $(which brew)
then
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
    echo "Esta instalado en" `which brew`
fi

echo "Terminado"
