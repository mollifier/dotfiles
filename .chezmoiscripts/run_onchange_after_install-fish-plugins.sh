#!/bin/bash

# fisher
# https://github.com/jorgebucaran/fisher
if command -v fish >/dev/null 2>&1; then
  if [ -f ~/.config/fish/functions/fisher.fish ]; then
    echo 'instal fish plugins'
    fish -c "source ~/.config/fish/functions/fisher.fish; fisher update"
  fi
fi
