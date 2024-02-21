#!/usr/bin/env sh
BASEDIR=$(cd "$(dirname "$0")" && pwd)
CONFIG_DIR=$HOME/.local/share/bash-completion/completions 

# Create directory if it doesn't exist
if [ ! -d $CONFIG_DIR ]; then
  mkdir -p $CONFIG_DIR
fi

# Copy bash-completion directory file to target
cp -r $BASEDIR/bash-completion/* $CONFIG_DIR
