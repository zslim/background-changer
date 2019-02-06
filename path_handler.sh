#!/usr/bin/env bash

# Reading the path for the folder containing pictures
folder=`cat path_for_folder.txt`

## Checking if there is a folder name
if [[ -z $folder ]]
then
  echo "Please enter the path for the folder that contains your pictures."
  read -p "Path to folder: " folder
fi

## Checking if folder name is valid
while [[ ! -d $folder ]]
do
  echo $folder
  cd $folder
  echo "No such directory found. Please enter an existing directory."
  read -p "Path to folder: " folder # doesn't recognize input as path :(
done

## Saving the valid folder path
folder > path_for_folder.txt

echo $folder
