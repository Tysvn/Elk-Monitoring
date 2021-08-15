#!/bin/bash

#INSTALLS GROUP OF APPS

packages=('nano' 'wget' 'net-tools')

for package in ${packages[@]}
do
  if [ $(which $package) ]
  then
    echo "$package is already installed."
  else
    echo "$package is not installed, proceeding to install."
    #apt update
    #apt install $package -y
  fi
done


#--------------------------------------------------------------

#SEARCH FOR SCRIPTS IN ALL USERS FROM /home

for user in $(ls /home)
do
  if [ -d /home/$user ]
  then
    for item in $(find /home/$user -iname '*.sh')
    do
      echo "Scripts found in $user's home directory: $item"
    done
  fi
done

#--------------------------------------------------------------

#MAKE GROUP OF SCRIPTS IN FOLDER EXECUTABLE

for script in $(ls ~/Documents/MY_SCRIPTS)
do
  if [ ! -x ~/Documents/MY_SCRIPTS/$script]
  then
    chmod +x ~/Documents/MY_SCRIPTS/$script
  fi
done

#---------------------------------------------------------------

#HASHING A FILE

for file in $(ls ~/Documents/hash_files/*)
do
  sha256sum $file
done

