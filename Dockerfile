FROM archlinux as barch

# Default is barch but should be built with specific user
ARG USER

ENV SHELL /usr/bin/zsh

RUN pacman -Syuv --noconfirm base-devel \
  && useradd --system --create-home $USER \
  && echo 'ALL ALL = (ALL) NOPASSWD: ALL' >> /etc/sudoers \
  && echo "$USER ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers.d/$USER \
  && echo 'root:root' | chpasswd \
  && echo "$USER:$USER" | chpasswd

RUN pacman -Syuv --noconfirm \ 
  && curl -O https://blackarch.org/strap.sh \
  && sha1sum strap.sh \
  && chmod +x strap.sh \
  && ./strap.sh

RUN pacman -Syuv --noconfirm yay

USER $USER

WORKDIR /home/$USER

COPY bin/* /usr/local/bin/

CMD ["/usr/bin/zsh"]

FROM barch as fullbarch

RUN barch-install.sh
