#!/bin/bash
#Spacemacs: Spacemacs is a new way to experience Emacs -- a sophisticated and polished set-up focused on ergonomics, mnemonics and consistency.

export HOME=~/Applications/spacemacs emacs
#emacs
#exec /Users/lramirez/Applications/Emacs.app/Contents/MacOS/Emacs "$@"

if [  $# -gt 0 ]; then
  exec /Users/lramirez/Applications/Emacs.app/Contents/MacOS/Emacs "$@"
else
  exec /Users/lramirez/Applications/Emacs.app/Contents/MacOS/Emacs -g 80x61+900+0
fi
