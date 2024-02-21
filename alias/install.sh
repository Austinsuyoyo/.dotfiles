#!/usr/bin/env sh
BASEDIR=$(cd "$(dirname "$0")" && pwd)

# Create symbolic links
if [ ! -f ~/.aliases ]; then
    ln -sf $BASEDIR/.aliases ~/.aliases
fi

# Check .zshrc & .bashrc
CONFIG_FILES="$HOME/.bashrc $HOME/.zshrc"
for config in $CONFIG_FILES; do
    #avoid empty file
    if [ -f $config ]; then
        # Install these to $config
        grep "if \[ -f ~\/.aliases ]; then" $config >/dev/null
        if [ $? -ne 0 ]; then
        cat <<-EOF >> $config

# source at ~/.dotfiles/alias/.aliases
if [ -f ~/.aliases ]; then
    . ~/.aliases
fi
EOF
        fi
    fi
done
