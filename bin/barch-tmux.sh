#!/usr/bin/env bash

if "test ! -d ~/.tmux/plugins/tpm" \
   "run 'git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm && ~/.tmux/plugins/tpm/bin/install_plugins'"
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

