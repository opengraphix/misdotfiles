#Configuración de para equipos nuevos

Pasos para instalar un equipo nuevo, es necesario crear un scripts para la configuracion con los siguientes cosas a instalar.

- Insalar Xcode source
- Instalar Xquart
- Instalar brew
- Instalar zsh y ho-myzsh
- Instalar configuración de emacs
- Instalar plantillas
- Fuentes

### Instalar BRew
```shell
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

### Instalar Cask

```shell
brew install caskroom/cask/brew-cask
```

### Configuración de VIM
```shell
sh ~/.vim_runtime/install_awesome_vimrc.sh
```

### Confugurar zsh
```shell
chsh -s /bin/zsh
```

### Instalar fuente MinionPro

Ejecutar el scritp de instalacion

### Configuracion de Libreoffice, e instalar plantillas

### Instalar 
- Emacs
- R
- Latex
- R studio
- Atom
- LibreOffice
- Firefox
- QGIS
- pandoc

Inspirado en las siguientes configuraciones:

https://github.com/mathiasbynens/dotfiles
https://github.com/opengraphix/vimrc
https://github.com/robbyrussell/oh-my-zsh
http://kieranhealy.org/blog/archives/2012/11/10/installing-minion-pro/
https://gist.github.com/kevinelliott/0726211d17020a6abc1f
https://github.com/kevinelliott/.dotfiles
http://caskroom.io/search
