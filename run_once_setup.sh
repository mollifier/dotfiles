#!/bin/bash

# fisher
# https://github.com/jorgebucaran/fisher
fish -c 'fisher update'

# tpm(Tmux Plugin Manager)
# https://github.com/tmux-plugins/tpm
~/.tmux/plugins/tpm/bin/install_plugins

# vim-plug
# https://github.com/junegunn/vim-plug
vim -es -u ~/.vimplug.vim -i NONE -c 'PlugInstall' -c 'qa'

