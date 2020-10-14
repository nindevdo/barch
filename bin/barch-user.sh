#!/usr/bin/env bash
export BARCH_USER=
export BITBUCKET_USER=
export GITHUB_USER=
export GIT_EMAIL=
export GNUPG_KEYID=
export AWS_VAULT_BACKEND=pass
export BARCH_USER=$1
export EDITOR=nvim
export GITHUB_TOKEN=$(pass github.com-barch)
export GPG_TTY=$(tty)
export RCLONE_CONFIG_PASS=$(pass rclone-config | head -n 1)
