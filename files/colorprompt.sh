#!/usr/bin/env bash

# Skip all for noninteractive shells.
[ -z "$PS1" ] && return

# Color production prompts red
if  [[ $HOSTNAME = *.prod.* ]]; then
  export PS1='\[\e[1;31m\][\u@\h \W]\$\[\e[0m\] '
# Color test prompts yellow
elif  [[ $HOSTNAME = *.test.* ]]; then
  export PS1='\[\e[1;33m\][\u@\h \W]\$\[\e[0m\] '
# Color other prompts green
else
  export PS1='\[\e[1;32m\][\u@\h \W]\$\[\e[0m\] '
fi
