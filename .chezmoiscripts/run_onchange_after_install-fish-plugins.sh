#!/bin/bash

# fisher
# https://github.com/jorgebucaran/fisher
if command -v fish >/dev/null 2>&1; then
  fish -c 'fisher update'
fi
