#!/usr/bin/env bash

curl -sLf https://spacevim.org/install.sh | bash

-install.sh
    6  nvim
    7  yay
    8  nvim --version
    9  whoami
   10  sudo chown barch:barch ~/.local/share/nvim/
   11  nvim
   12  v
   13  nvim
   14  nvim
   15  nvim
   16  nvim
   17  nvim
   18  nvim
   19  nvim
   20  ls .SpaceVim/bundle/vimproc.vim/
   21  ls
   22  make
   23  lw
   24  pwd
   25  ls
   26  cd .SpaceVim/bundle/vimproc.vim/
   27  ls
   28  make
   29  install
   30  nvim
   31  ~
   32  v
   33  nvim
   34  nvim
#BARCH_USER
#BITBUCKET_USER
#GITHUB_USER
#GIT_EMAIL
#GNUPG_KEYID
export BARCH_USER=$1


if "test ! -d ~/.tmux/plugins/tpm" \
   "run 'git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm && ~/.tmux/plugins/tpm/bin/install_plugins'"
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

#USER
export EDITOR=nvim

## KEYBASE
keybase oneshot -u $BARCH_USER
keybase pgp export --secret | gpg --allow-secret-key --import

### $GNUPG_KEYID
export GPG_TTY=$(tty)
gpg --edit-key $GNUPG_KEYID
gpgconf --kill gpg-agent

git config --global commit.gpgsign true
git config --global user.email $GIT_EMAIL
git config --global user.name $GITHUB_USER
git config --global user.signingkey $GNUPG_KEYID
git config --global user.signingkey $GNUPG_KEYID

git clone keybase://private/$BARCH_USER/home $HOME/.password-store
git clone keybase://private/$BARCH_USER/pass $HOME/.password-store
git clone keybase://private/$BARCH_USER/task $HOME/.task
git clone keybase://private/$BARCH_USER/timew $HOME/.timew

git secrets  --register aws --global

##EXPORTS
export RCLONE_CONFIG_PASS=$(pass rclone-config | head -n 1)
export GITHUB_TOKEN=$(pass github.com-barch)


bc_genpass() {
	LANGS=(eff-long eff-short eff-special legacy spa-mich fin-kotus ita-wiki ger-anlx nor-nb fr-freelang pt-ipublicis pt-l33t-ipublicis)
	rand=$[$RANDOM % ${#LANGS[@]}]
	xkcdpass -C random -n $1 -w ${LANGS[$rand]} -d ${FOO:-.}
}
