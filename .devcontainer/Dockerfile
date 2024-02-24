# latest because this is the image produced by this project

FROM jfaleiro/devcli:latest as base 

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get clean \
    && apt-get update \
    && apt-get -y install --no-install-recommends \
        graphviz \
        openssh-client \
    && echo "cleaning up..." \
    && apt-get autoremove -y \
    && apt-get clean -y \
    && rm -rf /var/lib/apt/lists/*

ENV DEBIAN_FRONTEND=dialog \
    LANG=C.UTF-8 \
    LC_ALL=C.UTF-8