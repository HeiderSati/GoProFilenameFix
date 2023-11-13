#!/bin/sh

# 2023-11-13 10:35am - Heider: Added fail safe condition to ensure we don't process the NEW_xxxx file twice...

for file in "$@"; do
	if [ -f "$file" ]; then 
		filenameonly=$(basename "$file")
		dironly=$(dirname "$file")

		if [ ${filenameonly:0:4} != "NEW_" ]; then
			NewName="NEW_""${filenameonly:0:2}""${filenameonly:4:4}""${filenameonly:2:2}""${filenameonly:8:4}"
			echo "Renaming File: " "$filenameonly" ", To: " "$NewName" 
			mv "$dironly/$filenameonly" "$dironly/$NewName"
		else
			echo "Skipping Already Renamed File: " "$filenameonly"
		fi


	fi
done
