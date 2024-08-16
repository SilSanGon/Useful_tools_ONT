#!/bin/bash

## Code made by Silvia Sanchez Gonzalez - 18/06/2024

directory="."
pattern="*.fastq"  # Patrón para buscar archivos con la extensión .fastq

for file in $directory/$pattern; do
    # Convertir el archivo de .fastq a .fasta
    sed -n '1~4s/^@/>/p;2~4p' "$file" > "${file%.fastq}.fasta"
done

echo "Done"
