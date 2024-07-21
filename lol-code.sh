#!/bin/bash

FILE_PATH=$1

# Detect languages of the file and get the JSON output
LANGUAGE_JSON=$($HOME/.lol-code/getl "$FILE_PATH")

# Extract the language with the highest percentage using jq
LANGUAGE=$(echo "$LANGUAGE_JSON" | jq -r 'to_entries | max_by(.value) | .key')

# Define paths
ICONS_DIR=$HOME/.lol-code/icons
ICON="$ICONS_DIR/$LANGUAGE.png"

# Check if ICONS image exists
if [[ -f "$ICON" ]]; then
    jp2a --colors --size=40x20 "$ICON"
else
    figlet -f ~/.local/share/fonts/figlet-fonts/3d.flf "$LANGUAGE" | lolcat
fi

echo "Happy $LANGUAGE-ing!" | lolcat -p 1

# Open file in Visual Studio Code
code "$FILE_PATH"
