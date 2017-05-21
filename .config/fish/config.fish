for p in /opt/bin /opt/local/bin ~/.config/fish/bin /usr/bin /usr/local/bin ~/bin /Library/Frameworks/GDAL.framework/Programs /Applications/Postgres.app/Contents/Versions/9.4/bin
	if test -d $p
		set -x PATH $p $PATH
	end
end

# Path to Oh My Fish install.
set -gx OMF_PATH /Users/lramirez/.local/share/omf

#set fish_theme agnoster
# Customize Oh My Fish configuration path.
#set -gx OMF_CONFIG /Users/lramirez/.config/omf
#set fish_plugins git

# Load oh-my-fish configuration.
source $OMF_PATH/init.fish

#Mis variables
set -g -x JAVA_HOME /Library/Java/JavaVirtualMachines/jdk1.7.0_79.jdk/Contents/Home
set -g -x M2_HOME /opt/apache-maven-3.3.3
set -g -x ANT_HOME /opt/apache-ant-1.9.6

set -g -x PATH $JAVA_HOME/bin $M2_HOME/bin $ANT_HOME/bin $PATH

#mis alias
alias cp="rsync -p --progress -ah"
alias ..="cd .."
alias ...="cd ../.."
alias -="cd -"

alias la="ls -Gla"

# List only directories
alias lsd='ls -l | grep "^d"'

alias ll='ls -ahlF'
alias l='ls -CF'

#Source : http://www.cyberciti.biz/howto/shell-primer-configuring-your-linux-unix-osx-environment/
# Open desktop apps from bash
alias preview="open -a preview"
alias safari="open -a safari"
alias firefox="open -a firefox"
alias libreoffice="open -a libreoffice"
#alias chrome="open -a google\ chrome"
alias f='open -a Finder '

## Colorize the grep command output for ease of use (good for log files)##
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# Resume wget by default
alias wget='wget -c'

# Quick check running state of a process
alias psef="ps -ef | grep "
alias top="top -o cpu"
alias ps="command ps -SAcr -o 'uid,pid,ppid,time,rss,command'"
