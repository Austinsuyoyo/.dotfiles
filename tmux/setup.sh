#!/usr/bin/env sh
BASEDIR=$(dirname "$0")

ln -sf $BASEDIR/.tmux.conf ~/.tmux.conf
ln -sf $BASEDIR/.tmux.conf.local ~/.tmux.conf.local
