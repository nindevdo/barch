FROM archlinux

ENV SHELL /usr/bin/bash

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

RUN curl -sLf https://spacevim.org/install.sh | bash

WORKDIR /home/barch

COPY bin/* /usr/local/bin/

CMD ["/usr/bin/bash"]
