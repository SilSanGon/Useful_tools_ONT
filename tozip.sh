#!/bin/bash

## Code made by Silvia Sánchez - 14/08/2024


# Recorre cada subdirectorio dentro del directorio actual
for dir in */; do
    # Recorre todos los archivos dentro de cada subdirectorio
    for file in "$dir"*; do
        # Comprueba si el archivo es un archivo regular (no un directorio ni un archivo ya comprimido)
        if [ -f "$file" ] && [ "${file##*.}" != "gz" ]; then
            gzip "$file"
        fi
    done
done

echo "All files have been compressed."

