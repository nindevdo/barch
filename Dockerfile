FROM archlinux
# MAINTAINER author brandoncamenisch
ENV SHELL /bin/bash

RUN pacman -Syuv --noconfirm base-devel \
  && useradd --system --create-home barch \
  && echo 'ALL ALL = (ALL) NOPASSWD: ALL' >> /etc/sudoers \
  && echo 'barch ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers.d/barch \
  && echo 'root:root' | chpasswd \
  && echo 'barch:barch' | chpasswd

RUN pacman -Syuv --noconfirm \ 
  && curl -O https://blackarch.org/strap.sh \
  && sha1sum strap.sh \
  && chmod +x strap.sh \
  && ./strap.sh

RUN pacman -Syuv --noconfirm yay

USER barch

RUN yay -S --noconfirm \
ack \
antibody \
asciinema \
aws-cli \
aws-vault \
jq \
keybase \
multitail \
neovim \
nerd-fonts-dejavu-complete \
nerd-fonts-noto-sans-mono \
nerd-fonts-source-code-pro \
nerd-fonts-terminus \
pass \
qrencode \
ranger \
task \
tig \
tmux \
tmuxp \
youtube-dl \
zbar \
zsh \
zsh-autosuggestions \
zsh-completions \
zsh-history-substring-search \
zsh-theme-powerlevel9k

RUN curl -sLf https://spacevim.org/install.sh | bash

WORKDIR /home/barch

CMD ["/usr/bin/zsh"]
