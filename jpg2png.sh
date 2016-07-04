#!/bin/sh

#Converts every .jpg file in the current directory into a .png file
#The .jpg is then removed. 

for f in *.jpg
   do
      #basename converts file while maintaining the name of file
      if [ ! -f "$f.png" ] 
         then
            convert "$f" "`basename "$f" .jpg`.png"
         else
            echo ""$f" already exists"
      fi
      #Using *.jpg instead of "$f" would remove all instances of jpg after the first conversion 
      rm "$f"      
done;
