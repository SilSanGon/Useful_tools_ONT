#!/bin/bash
## Code made by Silvia Sanchez Gonzalez - 18/06/2024

directory="."
pattern="barcode"

for file in $directory/$pattern*; do
	#echo "$directory"/"$pattern"
	echo "$file"
	cd $file/
	gunzip *.gz
	cat *.fastq > $file.fastq
	mv $file.fastq ../
	cd ..
done    
echo "Done"
