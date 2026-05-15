#!/bin/bash

if [ ! -d ~/.anyenv ] || [ ! -x ~/.anyenv/bin/anyenv ]; then
  exit 0
fi

# anyenv
# https://github.com/anyenv/anyenv
if [ ! -d ~/.config/anyenv/anyenv-install ]; then
  ~/.anyenv/bin/anyenv install --force-init
fi

# install nodenv
~/.anyenv/bin/anyenv install --skip-existing nodenv
eval "$(~/.anyenv/bin/anyenv init - bash)"

~/.anyenv/envs/nodenv/bin/nodenv install --skip-existing 24.13.1
~/.anyenv/envs/nodenv/bin/nodenv install --skip-existing 24.15.0
~/.anyenv/envs/nodenv/bin/nodenv global 24.15.0
