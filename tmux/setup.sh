#!/usr/bin/env sh
BASEDIR=$(cd "$(dirname "$1")" && pwd)/$(basename "$1")

ln -sf $BASEDIR/.tmux.conf ~/.tmux.conf
ln -sf $BASEDIR/.tmux.conf.local ~/.tmux.conf.local
