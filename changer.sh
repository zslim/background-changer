#!/usr/bin/env bash

source input_reader.sh

# Reading the path for the folder containing pictures
folder=`cat path_for_folder.txt`

## Checking if there is a folder name
if [[ -z folder ]]
then
  echo "Please enter the path for the folder that contains your pictures:"
  read folder
fi

## Checking if folder name is valid
while [[ ! -d $folder ]]
do
  echo "No such folder found. Please enter an existing directory:"
  read folder
done

# Saving the valid folder path
folder > path_for_folder.txt
