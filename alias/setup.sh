#!/usr/bin/env sh
BASEDIR=$(cd "$(dirname "$1")" && pwd)/$(basename "$1")

#add .aliases to .bashrc
ln -sf $BASEDIR/.aliases ~/.aliases

if [ -f ~/.aliases ]; then
    . ~/.aliases
fi

#add .aliases to .zshrc
source $HOME/.aliases
