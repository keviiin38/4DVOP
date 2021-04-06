FROM ubuntu:20.04

RUN apt update \
  && apt install -y openssh-server sudo \
  && useradd -m -d /home/user -s /bin/bash -G sudo user \
  && echo "user:password" | chpasswd

COPY docker-entrypoint.sh /

ENTRYPOINT [ "/docker-entrypoint.sh" ]
CMD [ "tail", "-f", "/dev/null" ]