#!/bin/bash

if ! command -v tmux >/dev/null 2>&1; then
  exit 0
fi

# tpm(Tmux Plugin Manager)
# https://github.com/tmux-plugins/tpm
if [ -x ~/.config/tmux/plugins/tpm/bin/install_plugins ]; then
  ~/.config/tmux/plugins/tpm/bin/install_plugins
fi

