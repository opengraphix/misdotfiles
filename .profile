#Colores
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

#Configuración de Java
#export JAVA_HOME="$(/usr/libexec/java_home -v 1.7)"
export JAVA_HOME="$(/usr/libexec/java_home -v 1.8)"
export M2_HOME="/opt/apache-maven-3.3.3"
export ANT_HOME="/opt/apache-ant-1.9.6"

#Ruta
export PATH=$JAVA_HOME/bin:$M2_HOME/bin:$ANT_HOME/bin:/Library/Frameworks/GDAL.framework/Programs:/Applications/Postgres.app/Contents/Versions/9.4/bin:/usr/local/sbin:/opt/mongodb-osx-x86_64-3.2.1/bin:/Library/TeX/texbin:~/.cabal/bin:$PATH

source ~/.aliases

#Ejecutar VS Code
code () { VSCODE_CWD="$PWD" open -n -b "com.microsoft.VSCode" --args $* ;}

# Fortuna
fortune harvey
