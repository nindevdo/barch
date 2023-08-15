#!/usr/bin/bash
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

yay -Syuv --noconfirm \
ack \
asciinema \
aws-cli \
aws-vault \
bashtop \
bfg \
bugwarrior \
docker \
docker-compose \
git-extras \
git-lfs \
git-secrets \
gnupg \
grip \
htop \
hub \
ipython \
jq \
kbfs \
keybase \
lsb-release \
multitail \
neovim \
node \
npm \
openssh \
ookla-speedtest-bin \
pass \
pass-otp \
python-pip \
qrencode \
ranger \
rclone \
screenfetch \
task \
tig \
timew \
tmux \
tmuxp \
tomb \
vim-vimproc-git \
xkcdpass \
xorg-mkfontscale \
youtube-dl \
zbar \
zsh \
zsh-autosuggestions \
zsh-completions \
zsh-history-substring-search \
zsh-syntax-highlighting \
zsh-theme-powerlevel10k

touch .zshrc

echo 'source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme' >>! ~/.zshrc

curl -sLf https://spacevim.org/install.sh | bash

sudo pip install jira