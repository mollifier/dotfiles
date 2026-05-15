#!/bin/bash

if ! command -v fish >/dev/null 2>&1; then
  exit 0
fi

# fisher
# https://github.com/jorgebucaran/fisher
if [ -f ~/.config/fish/functions/fisher.fish ]; then
  fish -c 'fisher update' < /dev/null
fi
