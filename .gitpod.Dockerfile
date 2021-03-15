FROM ubuntu:16.04

USER root

RUN apt-get update && apt-get upgrade \
        && apt-get autoremove \
    && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/*
