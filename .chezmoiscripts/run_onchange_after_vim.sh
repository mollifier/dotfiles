#!/bin/bash

if ! command -v vim >/dev/null 2>&1; then
  exit 0
fi

# directory for vim backup file
if [ ! -d ~/.local/share/vim/backup ]; then
  mkdir -p ~/.local/share/vim/backup
fi

# Undo persistence
if [ ! -d ~/.local/share/vim/undo ]; then
  mkdir -p ~/.local/share/vim/undo
fi

# vim-plug
# https://github.com/junegunn/vim-plug
if [ -f ~/.vimplug.vim ]; then
  # Treat as success on forced periodic execution.
  vim -es -u ~/.vimplug.vim -i NONE -c 'PlugInstall' -c 'qa' || true
fi
