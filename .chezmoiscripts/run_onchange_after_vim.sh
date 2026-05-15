#!/bin/bash

echo '[debug] run after vim script'

# directory for vim backup file
if [ ! -d ~/.local/share/vim/backup ]; then
  mkdir -p ~/.local/share/vim/backup
fi

# Undo persistence
if [ ! -d ~/.local/share/vim/undo ]; then
  mkdir -p ~/.local/share/vim/undo
fi
