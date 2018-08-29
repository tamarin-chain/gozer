FROM debian:stretch
LABEL maintainer="Gozer Developers <dev@gozer.org>"
LABEL description="Dockerised GozerCore, built from Travis"

RUN apt-get update && apt-get -y upgrade && apt-get clean && rm -fr /var/cache/apt/*

COPY bin/* /usr/bin/
