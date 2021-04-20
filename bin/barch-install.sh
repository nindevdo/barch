#!/usr/bin/bash
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
ookla-speedtest-bin \
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

touch .zshrc
echo 'source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme' >>! ~/.zshrc
curl -sLf https://spacevim.org/install.sh | bash
