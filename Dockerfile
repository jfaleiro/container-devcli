FROM ubuntu:latest

ENV DEBIAN_FRONTEND=noninteractive
RUN apt clean
RUN apt-get update \
    && apt-get -y install --no-install-recommends apt-utils 2>&1