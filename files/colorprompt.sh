#!/usr/bin/env bash

# Skip all for noninteractive shells.
[ -z "$PS1" ] && return

# Color production prompts red
if  [[ $HOSTNAME = *.prod.* ]]; then
  export PS1='\[\e[1;31m\][\u@\h \W]\$\[\e[0m\] '
# Color beta prompts brown
elif  [[ $HOSTNAME = *.beta.* ]]; then
  export PS1='\[\e[0;33m\][\u@\h \W]\$\[\e[0m\] '
# Color test prompts yellow
elif  [[ $HOSTNAME = *.test.* ]]; then
  export PS1='\[\e[1;33m\][\u@\h \W]\$\[\e[0m\] '
# Color dev prompts green
elif  [[ $HOSTNAME = *.dev.* ]]; then
  export PS1='\[\e[1;32m\][\u@\h \W]\$\[\e[0m\] '
fi
