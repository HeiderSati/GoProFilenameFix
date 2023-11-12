#!/bin/sh

for file in "$@"; do
	if [ -f "$file" ]; then 
		NewName="NEW_GH""${file:4:4}""${file:2:2}""${file:8:4}"
		echo "Renaming File: " "$file" ", To: " "$NewName"
		mv $file $NewName
	fi
done
 
