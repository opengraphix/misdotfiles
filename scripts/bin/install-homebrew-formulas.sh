#!/bin/sh
#
# Homebrew
#
# This install --verboses some of the common dependencies needed (or at least desired)
# using Homebrew.
# Stolen from zach holman
# https://github.com/holman/dotfiles/blob/master/homebrew/install --verbose.sh

echo "Installing homebrew formulas"

# Check for Homebrew
if test ! $(which brew)
then
  echo "  x You should probably install Homebrew first:"
  echo "    https://github.com/mxcl/homebrew/wiki/install"
  exit
fi

brew install autoconf
brew install automake
brew install ack
brew install ctags
brew install curl-ca-bundle
brew install dos2unix
brew install fuse4x
brew install fuse4x-kext
brew install gdbm
brew install gettext
brew install --with-blk-sha1 --with-pcre --with-gettext --without-completions git
brew install gnu-sed
brew install jq
# workaround for hub completion bug https://github.com/github/hub/issues/231
brew install --HEAD hub
brew install libtool
brew install libyaml

brew install --override-system-vi vim
brew install macvim

brew install nodejs
brew install npm

brew install php-cs-fixer
brew install python
brew install pyenv-virtualenv

# these usually required for pip deps
# usually needed for python gevent
brew install libevent

brew install ncurses
brew install ntfs-3g
brew install openssl
brew install pcre
brew install pkg-config
brew install pv
brew install readline
brew install siege
brew install stow
brew install terminal-notifier
brew install the_silver_searcher
brew install tig
brew install watch
brew install wget
brew install xz

brew install ssh-copy-id
# dont forget to follow brew post-install instructions. brew info zsh
brew install --disable-etcdir zsh
brew install zsh-completions

#######################
# Install GNU core utilities (those that come with OS X are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
sudo ln -s /usr/local/bin/gsha256sum /usr/local/bin/sha256sum

# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed --with-default-names
# Install Bash 4.
# Note: don’t forget to add `/usr/local/bin/bash` to `/etc/shells` before
# running `chsh`.
brew install bash
brew tap homebrew/versions
brew install bash-completion2

# Install `wget` with IRI support.
brew install wget --with-iri

# Install RingoJS and Narwhal.
# Note that the order in which these are installed is important;
# see http://git.io/brew-narwhal-ringo.
brew install ringojs
brew install narwhal

# Install more recent versions of some OS X tools.
brew install vim --override-system-vi
brew install homebrew/dupes/grep
brew install homebrew/dupes/openssh
brew install homebrew/dupes/screen
brew install homebrew/php/php56 --with-gmp

# Install font tools.
brew tap bramstein/webfonttools
brew install sfnt2woff
brew install sfnt2woff-zopfli
brew install woff2

# Install some CTF tools; see https://github.com/ctfs/write-ups.
brew install aircrack-ng
brew install bfg
brew install binutils
brew install binwalk
brew install cifer
brew install dex2jar
brew install dns2tcp
brew install fcrackzip
brew install foremost
brew install hashpump
brew install hydra
brew install john
brew install knock
brew install netpbm
brew install nmap
brew install pngcheck
brew install socat
brew install sqlmap
brew install tcpflow
brew install tcpreplay
brew install tcptrace
brew install ucspi-tcp # `tcpserver` etc.
brew install xpdf
brew install xz

# Install other useful binaries.
brew install ack
brew install dark-mode
#brew install exiv2
brew install tmux
brew install git
brew install git-lfs
brew install imagemagick --with-webp
brew install lua
brew install lynx
brew install wget
brew install fortune
brew install p7zip
brew install pigz
brew install pv
brew install rename
brew install rhino
brew install speedtest_cli
brew install ssh-copy-id
brew install testssl
brew install tree
brew install gawk
brew install webkit2png
brew install zopfli
brew install lcdf-typetools
brew install bibtools
brew install pandoc
brew install pandoc-citeproc
brew install cabal-install
brew install wrk


exit 0
