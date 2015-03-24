#!/bin/bash

# for now this script assumes that it is run by the user which whants to 
# use the dotfiles

for i in *; do
    if [ "$i" != "install.sh" ]; then
        ln -s $(pwd)/$i ~/.$i
        echo "ln -s $(pwd)/$i ~/.$i"
    fi
done

