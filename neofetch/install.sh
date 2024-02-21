#!/usr/bin/env sh
BASEDIR=$(cd "$(dirname "$0")" && pwd)
CONFIG_PATH=$HOME/.config/neofetch/config.conf
# Create directory if it doesn't exist
if [ ! -d $HOME/.config/neofetch ]; then
  mkdir -p $HOME/.config/neofetch
fi

# Create symbolic links
if [ ! -f $CONFIG_PATH ]; then
    ln -s $BASEDIR/config.conf $CONFIG_PATH
else
    if [ ! $(readlink -f $CONFIG_PATH) = $BASEDIR/config.conf ]; then
        ln -sf $BASEDIR/config.conf $CONFIG_PATH
    fi
fi
