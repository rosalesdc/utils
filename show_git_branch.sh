#!/bin/bash

recorrer_directorio()
{
 dir=$(dir -1)
 for file in $dir;
 do
# comprobamos que la cadena no este vacía
   if [ -d "$file" ]; then

    echo "------------------------------------"
    echo "NOMBRE DIR > " $file
    cd $file
    git status
    cd ..
  fi;
 done;
}

recorrer_directorio $DIR
read  -p "Press Enter to exit..."
