# GoProFilenameFix
This simple shell script will rename the files produced by GoPro cameras into a proper sequence for video editing

I recently bought a GoPro Hero camera, did few recordings here and there, when I imported all GoPro files into my desktop 
for video editing I was shocked to see the filenames done in reverse which doesn't help editing videos in any way, when I 
went to GoPro website, it appears that whoever designed the file naming system might have had too much to drink at the time. 

Anyway, this simple script I created as an open source resource is just a few lines that fixes filename, you can download the 
script as a file or just simply copy-and-paste the contents below into a Shell script, 



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




Once you have copied the content above (or downloaded) into the "GoProFileFix.sh" file, then you need to execute the following
command to ensure the script is executable: 

     chmod 755 GoProFileFix.sh

------------------------------------

To run the file, simply do the following

     ./GoProFileFix.sh (.....YOUR GO PRO FILE PATH....)/GH*.MP4

The above will rename a file with the name of GH010032.MP4 into NEW_GH003201.MP4, on the PATH provided. Same cane be
done if your files are GXxxxx or GSxxxx etc. 

More information on how the filenames are coded on a GoPro camera can be found on the GoPro Website below: 

    https://community.gopro.com/s/article/GoPro-Camera-File-Naming-Convention?language=en_US

I hope this helps, it certanly made my life much easier as importing many footage into my video editing can now appear 
in a serial manner.

Shout if you need any further help. 

Kind Regards
Heider
