#!/bin/sh

for file in "$@"; do
	if [ -f "$file" ]; then 
		filenameonly=$(basename "$file")
		dironly=$(dirname "$file")

		NewName="NEW_GH""${filenameonly:4:4}""${filenameonly:2:2}""${filenameonly:8:4}"
		echo "Renaming File: " "$filenameonly" ", To: " "$NewName" 
		mv "$dironly/$filenameonly" "$dironly/$NewName"

	fi
done
