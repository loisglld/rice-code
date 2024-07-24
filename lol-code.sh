#!/bin/bash

FILE_PATH=$1
ICONS_DIR=$HOME/.lol-code/icons

# Compile the get_language.go file if it doesn't exist
if [[ ! -f "$HOME/.lol-code/get_language" ]]; then
    go build $HOME/.lol-code/get_language.go
fi

LANGUAGE_JSON=$($HOME/.lol-code/get_language "$FILE_PATH")
LANGUAGE=$(echo "$LANGUAGE_JSON" | jq -r 'to_entries | max_by(.value) | .key')
ICON="$ICONS_DIR/$LANGUAGE.png"

if [[ "$FILE_PATH" != "." ]]; then
    DIRECTORY_NAME=$(basename "$FILE_PATH")
else
    DIRECTORY_NAME=$(basename $(realpath "$FILE_PATH"))
fi

if [[ -f "$ICON" ]]; then
    jp2a --colors --size=40x20 "$ICON"
else
    figlet -f ~/.local/share/fonts/figlet-fonts/3d.flf "$DIRECTORY_NAME" | lolcat
fi

echo "Happy $DIRECTORY_NAME-ing!" | lolcat -p 1

# Open file in Visual Studio Code
code "$FILE_PATH"
