#!/usr/bin/env bash

#USER
#BITBUCKET_USER
#GITHUB_USER
#GIT_EMAIL
#GNUPG_KEYID
export EDITOR=nvim

## KEYBASE
keybase oneshot -u $USER
# This portion needs some work to automate or improve key import as it's not working with the pipe
keybase pgp export --secret | gpg --allow-secret-key --import

### $GNUPG_KEYID
export GPG_TTY=$(tty)
gpg --edit-key $GNUPG_KEYID
gpgconf --kill gpg-agent

## TODO Add git config cache
git config --global commit.gpgsign true
git config --global user.email $GIT_EMAIL
git config --global user.name $GITHUB_USER
git config --global user.signingkey $GNUPG_KEYID
git config --global user.signingkey $GNUPG_KEYID

git clone keybase://private/$USER/home $HOME/.password-store
git clone keybase://private/$USER/pass $HOME/.password-store
git clone keybase://private/$USER/task $HOME/.task
git clone keybase://private/$USER/timew $HOME/.timew

git secrets  --register aws --global

##EXPORTS
export RCLONE_CONFIG_PASS=$(pass rclone-config | head -n 1)
export GITHUB_TOKEN=$(pass github.com-barch)
