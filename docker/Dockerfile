FROM debian:stretch
LABEL maintainer="stone Developers <dev@stone.cx>"
LABEL description="Dockerised stoneCore, built from Travis"

RUN apt-get update && apt-get -y upgrade && apt-get clean && rm -fr /var/cache/apt/*

COPY bin/* /usr/bin/
