#!/usr/bin/bash
pacman -S --needed git
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

yay -Syuv --noconfirm \
ack \
antibody \
asciinema \
aws-cli \
aws-vault \
bashtop \
git-extras \
htop \
jq \
keybase \
multitail \
neovim \
pass \
qrencode \
ranger \
rclone \
task \
tig \
tmux \
tmuxp \
tomb \
youtube-dl \
zbar \
zsh \
zsh-autosuggestions \
zsh-completions \
zsh-history-substring-search \
zsh-theme-powerlevel10k

echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>! ~/.zshrc
curl -sLf https://spacevim.org/install.sh | bash
