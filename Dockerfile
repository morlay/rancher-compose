FROM alpine:latest

ENV RANCHER_COMPOSE_VERSION v0.8.1

ADD https://github.com/rancher/rancher-compose/releases/download/$RANCHER_COMPOSE_VERSION/rancher-compose-linux-amd64-$RANCHER_COMPOSE_VERSION.tar.gz /tmp/

WORKDIR /tmp

RUN tar xzvf rancher-compose-linux-amd64-$RANCHER_COMPOSE_VERSION.tar.gz \
    && mv rancher-compose-$RANCHER_COMPOSE_VERSION/rancher-compose /usr/local/bin \
    && chmod +x /usr/local/bin/rancher-compose \
    && rm -rf /tmp/*
