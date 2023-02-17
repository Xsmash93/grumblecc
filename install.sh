#!/bin/bash

FOLDER="~/grumblecc"
echo "creating $FOLDER..."
mkdir ~/grumblecc
echo "copying files on it..."
cp -r ./* ~/grumblecc && rm ~/grumblecc/install.sh



path="~/grumblecc/grumblecc.sh"
line="alias grumblecc=$path"

if grep -q "$line" ~/.bashrc
then
    echo "alias already exists on .bashrc"
else
    echo "adding alias on .bashrc..."
    echo "$line" >> ~/.bashrc
fi

if grep -q "$line" ~/.zshrc
then
    echo "alias already exists on .zshrc"
else
echo "adding alias on .bashrc..."
    echo "$line" >> ~/.zshrc
fi
