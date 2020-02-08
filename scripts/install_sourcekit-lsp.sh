#!/usr/bin/env bash

ping -c 1 www.google.com
if [ $? -eq 0 ]; then
  git clone https://github.com/apple/sourcekit-lsp.git ~/tmp/sourcekit-lsp
  cd ~/tmp/sourcekit-lsp
  swift build
  mv .build/debug/sourcekit-lsp /usr/local/bin
fi
