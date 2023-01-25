#! /usr/bin/env bash

RED="31"
GREEN="32"
BOLDGREEN="\e[1;${GREEN}m"
ITALICRED="\e[3;${RED}m"
ENDCOLOR="\e[0m"

recorrer_directorio()
{
 dir=$(dir -1)
 for file in $dir;
 do
# comprobamos que la cadena no este vacía
   if [ -d "$file" ]; then

    echo "------------------------------------"
    echo -e "NOMBRE DIR > ${BOLDGREEN}" $file "${ENDCOLOR}"
    cd $file
    git status
    cd ..
  fi;
 done;
}

recorrer_directorio $DIR
read  -p "Press Enter to exit..."

