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
antibody \
ack \
asciinema \
aws-cli \
aws-extender-cli \
aws-inventory \
aws-vault \
awsbucketdump \
borg \
bugwarrior \
clamav \
cli-visualizer \
cli53 \
cloudfail \
cloudsploit \
cloudunflare \
cowsay \
cronie \
cryptsetup \
ctop \
dnsa \
dnsbrute \
dnslookup-git \
dnsmasq \
dnssec-anchors \
dnstracer \
dockerscan \
dorkbot \
dosfstools \
double-conversion \
driftnet \
dsniff \
htop \
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
terminus-font \
terminus-font-ll2-td1-ttf \
terminus-font-td1-otb \
terminus-re33 \
the_silver_searcher \
thefuck \
threadweaver \
tig \
tlp \
tlp-rdw \
tlpui \
tmux \
tmuxp \
toilet \
traceroute \
trape \
unicornscan \
youtube-dl \
zbar \
zsh \
zsh-theme-powerlevel9k \
zsh-autosuggestions \
zsh-completions \
zsh-history-substring-search

COPY $PWD/barch/* /usr/bin/

WORKDIR /home/barch

CMD ["/usr/bin/zsh"]
