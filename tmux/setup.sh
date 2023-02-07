#!/usr/bin/env sh
BASEDIR=$(cd "$(dirname "$0")" && pwd)

ln -sf $BASEDIR/.tmux.conf ~/.tmux.conf
ln -sf $BASEDIR/.tmux.conf.local ~/.tmux.conf.local
