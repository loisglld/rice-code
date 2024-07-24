#!/bin/bash

FILE_PATH=$1

# Detect languages of the file and get the JSON output
LANGUAGE_JSON=$(go run $HOME/.lol-code/get_language.go "$FILE_PATH")

# Extract the language with the highest percentage using jq
LANGUAGE=$(echo "$LANGUAGE_JSON" | jq -r 'to_entries | max_by(.value) | .key')

# Extract the name of the directory (if it is a directory)
DIRECTORY_NAME=$(basename "$FILE_PATH")

# Define paths
ICONS_DIR=$HOME/.lol-code/icons
ICON="$ICONS_DIR/$LANGUAGE.png"

# Check if ICONS image exists
if [[ -f "$ICON" ]]; then
    jp2a --colors --size=40x20 "$ICON"
else
    figlet -f ~/.local/share/fonts/figlet-fonts/3d.flf "$DIRECTORY_NAME" | lolcat
fi

echo "Happy $DIRECTORY_NAME-ing!" | lolcat -p 1

# Open file in Visual Studio Code
code "$FILE_PATH"
