#!/bin/bash 

# Author: Marcin
# Description: Lab1 script to create backup of /usr/bin folder
# Date: 26.05.2025
# Version: 1.0
# Changelog
# 1.0 - initial version, Marcin 

echo "Tworzenie katalogu 'backup'"
mkdir -p ~/backup 2> copy.err

echo "Kopiowanie plikow z /usr/bin"
cp -rp /usr/bin/* $HOME/backup > copy.log 2>&1

#exit 0
