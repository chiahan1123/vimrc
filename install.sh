#!/bin/sh

VIMDIR=~/.vim
VIMRC=~/.vimrc

terminate() {
  echo "$1"
  exit 1
}

if [ -d "$VIMDIR" ]; then
  terminate "$VIMDIR already exists. Suggest to rename it for backup."
fi

if [ -e "$VIMRC" ]; then
 terminate  "$VIMRC already exists. Suggest to rename it for backup."
fi

# Clone project
git clone https://github.com/chiahan1123/vimrc.git "$VIMDIR"

# Create symbolic link to default .vimrc location
ln -s $VIMDIR/vimrc $VIMRC
