#!/bin/bash

# Script pour convertir tous les fichiers SVG du répertoire actuel en PNG avec une hauteur de 32 pixels

# Vérifie si rsvg-convert est installé
if ! command -v rsvg-convert &> /dev/null
then
    echo "rsvg-convert pourrait ne pas être installé. Veuillez l'installer d'abord."
    exit 1
fi

# Parcourt tous les fichiers SVG du répertoire actuel
for svg_file in ./icons/*.svg; do
    if [[ -f "$svg_file" ]]; then
        # Remplace l'extension .svg par .png
        png_file="${svg_file%.svg}.png"
        
        # Convertit le fichier SVG en PNG avec une hauteur de 32 pixels
        rsvg-convert -h 2048 "$svg_file" > "$png_file"
        
        echo "Converti: $svg_file en $png_file"
    else
        echo "Aucun fichier SVG trouvé dans le répertoire actuel."
    fi
done
