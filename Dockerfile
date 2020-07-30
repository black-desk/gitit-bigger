## Dockerfile for gitit

FROM ubuntu

# install git, ssh, supervisor
RUN apt-get update && apt-get install -y vim-tiny git gitit supervisor libghc-zlib-dev

RUN echo "root:github.com/menduo" | chpasswd

VOLUME ["/data/gitit"]
WORKDIR /data/gitit

ADD . /data/gitit

ENTRYPOINT ["/data/gitit/docker-entrypoint.sh"]
