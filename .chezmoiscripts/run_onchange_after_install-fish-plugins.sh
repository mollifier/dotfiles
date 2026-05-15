#!/bin/bash

for i in $(seq 1 30); do
  if curl -sf --connect-timeout 3 --max-time 5 'https://api.github.com/zen' > /dev/null 2>&1; then
    break
  fi
  echo "Waiting for network access... ($i/30)"
  sleep 2
done

# fisher
# https://github.com/jorgebucaran/fisher
if command -v fish >/dev/null 2>&1; then
  fish -c 'fisher update'
fi
