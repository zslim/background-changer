#!/usr/bin/env bash

source path_handler.sh
echo $folder

# Handling the content of the folder
file_names=($folder/*)
rnd=$(shuf -i0-${#array[@]} -n1)
picture_path=${file_names[$rnd]}


# Setting background image!
gsettings set org.gnome.desktop.background picture-uri 'file://'"$picture_path"
