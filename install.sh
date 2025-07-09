#!/usr/bin/env bash

location="$HOME/.local/bin/"


# i found out that $HOME/.local/bin does not exist by default in fedora lol 
# idk about other distro tho
if [[ ! -d "$location" ]]; then
  echo "Folder '$location' does not exist. Creating it..."
  mkdir -v "$location"
fi

cp -v "./notnix" "$location"
