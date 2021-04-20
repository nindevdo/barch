FROM archlinux

ENV SHELL /usr/bin/bash

RUN pacman -Syuv --noconfirm base-devel git \
  && useradd --system --create-home barch \
  && echo 'ALL ALL = (ALL) NOPASSWD: ALL' >> /etc/sudoers \
  && echo 'barch ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers.d/barch \
  && echo 'root:root' | chpasswd \
  && echo 'barch:barch' | chpasswd

USER barch

WORKDIR /home/barch

COPY bin/* /usr/local/bin/

CMD ["/usr/bin/bash"]
