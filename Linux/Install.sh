#!/bin/sh

if test -f ./conf; then
    # Create the user bin if it doesn't exist
    if ! test -d ~/bin; then
        mkdir ~/bin
    fi

    cp ./conf ~/bin/

    # If it isn't executable, add that permission
    if ! test -x ~/bin/conf; then
        chmod +x ~/bin/conf
    fi
else
    echo "Missing file './conf'"
fi