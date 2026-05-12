#!/bin/bash

# fisher
# https://github.com/jorgebucaran/fisher
fish -c 'fisher update'

# tpm(Tmux Plugin Manager)
# https://github.com/tmux-plugins/tpm
~/.tmux/plugins/tpm/bin/install_plugins

# vim-plug
# https://github.com/junegunn/vim-plug
# Treat as success on forced periodic execution.
vim -es -u ~/.vimplug.vim -i NONE -c 'PlugInstall' -c 'qa' || true

# anyenv
# https://github.com/anyenv/anyenv
if [ ! -d ~/.config/anyenv/anyenv-install ]; then
  ~/.anyenv/bin/anyenv install --force-init
fi

~/.anyenv/bin/anyenv install --skip-existing nodenv
eval "$(~/.anyenv/bin/anyenv init - bash)"
~/.anyenv/envs/nodenv/bin/nodenv install --skip-existing 24.13.1
~/.anyenv/envs/nodenv/bin/nodenv install --skip-existing 24.15.0
~/.anyenv/envs/nodenv/bin/nodenv global 24.15.0

