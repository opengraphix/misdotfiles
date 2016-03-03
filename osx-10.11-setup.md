# Mac OS X 10.11 El Capitan

Custom recipe to get OS X 10.11 El Capitan running from scratch, setup applications and developer environment. This is very similar (and currently mostly the same) as my 10.10 Yosemite setup recipe (as found on this gist https://gist.github.com/kevinelliott/0726211d17020a6abc1f). Note that I expect this to change significantly as I install El Capitan several times.

I use this gist to keep track of the important software and steps required to have a functioning system after a semi-annual fresh install. On average, I reinstall each computer from scratch every 6 months, and I do not perform upgrades between distros.

This keeps the system performing at top speeds, clean of trojans, spyware, and ensures that I maintain good organizational practices for my content and backups. I highly recommend this.

You are encouraged to fork this and modify it to your heart's content to match your own needs.

## Install Software

The software selected is software that is "tried and true" --- software I need after any fresh install. I often install other software not listed here, but is handled in a case-by-case basis.

### Install from App Store

* [Airmail](https://itunes.apple.com/us/app/airmail/id573171375?mt=12&uo=4)
* [Degrees](https://itunes.apple.com/us/app/degrees/id430173763?mt=12&uo=4)
* [Pages](https://itunes.apple.com/us/app/pages/id409201541?mt=12&uo=4)
* [Twitter](https://itunes.apple.com/us/app/twitter/id409789998?mt=12&uo=4)
* [WiFi Explorer](https://itunes.apple.com/us/app/wifi-explorer/id494803304?mt=12&uo=4)
* [WiFi Signal](https://itunes.apple.com/us/app/wifi-signal/id525912054?mt=12&uo=4)
* [Todoist](https://itunes.apple.com/us/app/todoist-to-do-list-task-list/id585829637?mt=12&uo=4)
* [Xcode](https://itunes.apple.com/us/app/xcode/id497799835?mt=12&uo=4)

### Install from Third-Party Websites

* Browsers
	* Chrome (installed via Cask)
	* Firefox (installed via Cask)
	* Opera (installed via Cask)
	* [Webkit](http://webkit.org)

* Development
	* [Dropbox](https://www.dropbox.com/install2)
	* [LiveReload Extensions](http://help.livereload.com/kb/general-use/browser-extensions)
	* [Sublime Text 3](http://www.sublimetext.com/3)

* Utilities
	* [HyperDock](https://bahoom.com/hyperdock/)
	* [Little Snitch](http://www.obdev.at/products/littlesnitch/download.html)

* Virtualization
	* Parallels Desktop (installed via Cask)
	* Docker (installed via brew)
	* Vagrant (installed via Cask)

Fonts
-----
[Mensch coding font](http://robey.lag.net/2010/06/21/mensch-font.html)

#Xcode Command Line Tools

`Xcode > Preferences > Downloads > Command Line Tools`


#Homebrew

## Run Xcode and accept the license

Homebrew can not install properly until this occurs.

## Install Homebrew
```bash
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew doctor
```

At the time of this writing, `brew doctor` says that `Xcode 6.1` is required, which means downloading it from the Apple Developer Center until it is released in the Mac App Store.

## Install Homebrew extension Cask
```bash
brew install caskroom/cask/brew-cask
```

## Install common applications via Homebrew
*Databases are installed later.*
```bash
brew install ack autojump automake colordiff curl git git-flow \
             hub icoutils imagemagick libmemcached memcached openssl ossp-uuid qt \
             readline redis tmux wget libxml2
```

## Install applications via Homebrew Cask
```bash
brew cask install anvil
brew cask install atom
brew cask install authy-bluetooth
brew cask install awareness
brew cask install bartender
brew cask install battery-guardian
brew cask install firefox
brew cask install github-desktop
brew cask install google-chrome
brew cask install grandperspective
brew cask install hipchat
brew cask install joinme
brew cask install iterm2
brew cask install livereload
brew cask install ngrok
brew cask install parallels-desktop
brew cask install quicksilver
brew cask install rescuetime
brew cask install satellite-eyes
brew cask install sidestep
brew cask install skitch
brew cask install skype
brew cask install sonos
brew cask install spotify
brew cask install steam
brew cask install transmit
brew cask install vagrant
brew cask install vagrant-manager
```

## Install Parallels plugin for Vagrant
```
vagrant plugin install vagrant-parallels
```

See http://parallels.github.io/vagrant-parallels/ for more details.


#Shell

Install custom .dotfiles
```bash
git clone git@github.com:kevinelliott/.dotfiles.git ~/.dotfiles
~/.dotfiles/install.sh
```

Update .bash_profile
```bash
echo 'source ~/.dotfiles/base.sh' >> ~/.bash_profile
```

# OS X Preferences

```bash

#Set a blazingly fast keyboard repeat rate
defaults write NSGlobalDomain KeyRepeat -int 0.02

#Set a shorter Delay until key repeat
defaults write NSGlobalDomain InitialKeyRepeat -int 12

#Add a context menu item for showing the Web Inspector in web views
defaults write NSGlobalDomain WebKitDeveloperExtras -bool true

#Show the ~/Library folder
chflags nohidden ~/Library

#Store screenshots in subfolder on desktop
mkdir ~/Desktop/Screenshots
defaults write com.apple.screencapture location ~/Desktop/Screenshots
```

Set hostname
------------
`sudo scutil --set HostName SpaceX-Falcon-9`


#Git

Setup Github
------------
```bash
ssh-keygen -t rsa -C "kevin@welikeinc.com"

# Copy ssh key to github.com
subl ~/.ssh/id_rsa.pub

# Test connection
ssh -T git@github.com

# Set git config values
git config --global user.name "Kevin Elliott"
git config --global user.email "kevin@welikeinc.com"
git config --global github.user kevinelliott
git config --global github.token your_token_here

git config --global core.editor "subl -w"
git config --global color.ui true
```


# Sublime Text

Add Sublime Text CLI
--------------------

```bash
mkdir -p ~/bin && ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" ~/bin/subl
```

Install Package Control
-----------------------

Run `Sublime Text 3` and access the console via the `CTRL + ``` shortcut or the `View > Show Console` menu.

```
import urllib.request,os,hashlib; h = '7183a2d3e96f11eeadd761d777e62404' + 'e330c659d4bb41d3bdf022e94cab3cd0'; pf = 'Package Control.sublime-package'; ipp = sublime.installed_packages_path(); urllib.request.install_opener( urllib.request.build_opener( urllib.request.ProxyHandler()) ); by = urllib.request.urlopen( 'http://sublime.wbond.net/' + pf.replace(' ', '%20')).read(); dh = hashlib.sha256(by).hexdigest(); print('Error validating download (got %s instead of %s), please try manual install' % (dh, h)) if dh != h else open(os.path.join( ipp, pf), 'wb' ).write(by)
```

See https://sublime.wbond.net/installation for more information. Their site has a note that this install code will change for each new release, so it would be good to check once in a while.

Install Packages
----------------
[BracketHighlighter](https://github.com/facelessuser/BracketHighlighter)
[CoffeeScriptHaml](https://github.com/jisaacks/CoffeeScriptHaml)


Install Soda Theme
----------------------
```bash
git clone git://github.com/buymeasoda/soda-theme.git ~/Library/Application\ Support/Sublime\ Text\ 2/Packages/Theme\ -\ Soda
```

Install Tomorrow Theme
----------------------
```bash
git clone git://github.com/chriskempson/textmate-tomorrow-theme.git ~/Library/Application\ Support/Sublime\ Text\ 2/Packages/Color\ Scheme\ -\ Tomorrow
```

Settings
--------

**Sublime Text > Preferences > Settings - User**

```json
{
  "bold_folder_labels": true,
  "close_windows_when_empty": true,
  "color_scheme": "Packages/User/SublimeLinter/Monokai-Cobalt (SL).tmTheme",
  "draw_indent_guides": false,
  "fade_fold_buttons": false,
  "font_face": "Source Code Pro",
  "font_size": 16,
  "highlight_line": true,
  "highlight_modified_tabs": true,
  "ignored_packages":
  [
    "Vintage"
  ],
  "show_tab_close_buttons": false,
  "spell_check": false,
  "tab_size": 2,
  "translate_tabs_to_spaces": true,
  "theme": "Soda Light.sublime-theme",
  "word_separators": "./\\()\"'-:,.;<>~!@#%^&*|+=[]{}`~?",
  "word_wrap": true
}
```

Key Bindings
------------

```json
[
	{ "keys": ["super+b"], "command": "expand_selection", "args": {"to": "brackets"} },
	{ "keys": ["super+f"], "command": "show_panel", "args": {"panel": "replace"} },
	{ "keys": ["super+alt+f"], "command": "show_panel", "args": {"panel": "find"} }
]
```


Snippets
--------
```bash
git clone git@github.com:bytestudios/sublime-snippets.git "/Users/Joel/Library/Application Support/Sublime Text 2/Packages/Byte"
```


## Server


### Docker
```bash
brew install docker boot2docker
boot2docker init
boot2docker up
```

### MySQL

```bash
brew install mysql
brew pin mysql
```

### MySQL Settings

```bash
# Copy launch agent into place
mkdir -p ~/Library/LaunchAgents && cp /usr/local/Cellar/mysql/VERSION/homebrew.mxcl.mysql.plist ~/Library/LaunchAgents/

# Edit launch agent and set both keepalive and launch at startup to false
vi ~/Library/LaunchAgents/homebrew.mxcl.mysql.plist

# Inject launch agent
launchctl load -w ~/Library/LaunchAgents/homebrew.mxcl.mysql.plist

# Set up databases to run as your user account
unset TMPDIR && mysql_install_db --verbose --user=`whoami` --basedir="$(brew --prefix mysql)" --datadir=/usr/local/var/mysql --tmpdir=/tmp

# Start mysql
start mysql

# Secure mysql
/usr/local/Cellar/mysql/VERSION/bin/mysql_secure_installation
```


### PostgreSQL

```bash
brew install postgres --no-ossp-uuid
brew pin postgres
```

### PostgreSQL Settings

```bash
# Initialize db if none exists already
initdb /usr/local/var/postgres

# Create launchctl script
mkdir -p ~/Library/LaunchAgents
cp /usr/local/Cellar/postgresql/VERSION/homebrew.mxcl.postgresql.plist ~/Library/LaunchAgents/

# Edit launchctl script (set to not start automatically and keepalive false)
subl ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist

# Inject launchctl script
launchctl load -w ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist

# Start PostgreSQL
start pg
```

### Ruby Gems

#### libv8 / therubyracer
```bash
brew uninstall v8
gem uninstall libv8
brew install v8
gem install therubyracer
gem install libv8 -v 3.16.14.3 -- --with-system-v8
```

#### nokogiri
```bash
brew tap homebrew/dupes
brew install libxml2 libxslt libiconv
gem install nokogiri -- --with-iconv-dir=/usr/local/Cellar/libiconv/VERSION/
```

#### capybara-webkit
```bash
brew install -v https://raw.github.com/cliffrowley/homebrew/patched_qt/Library/Formula/qt.rb --HEAD --without-ssse3
gem install capybara-webkit -v '0.9.0'
```

![aww yeah](http://i.imgur.com/AmFax.gif)