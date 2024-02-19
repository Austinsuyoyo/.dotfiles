#!/usr/bin/env sh

# Export the list of installed extensions to a file
if [ -d "$HOME/.vscode-server" ]; then
    code --list-extensions | sed '1d'  | xargs -L 1 echo code --install-extension
else
    code --list-extensions | xargs -L 1 echo code --install-extension
fi
