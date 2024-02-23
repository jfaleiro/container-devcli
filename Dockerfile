FROM jfaleiro/common:v0.1.4

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get clean \
    && apt-get update \
    apt-get install --no-install-recommends -y \
        git \
        procps \
        zsh \
        make \
        curl \
    && echo "cleaning up..." \
    && apt-get autoremove -y \
    && apt-get clean -y \
    && rm -rf /var/lib/apt/lists/*

# see https://github.com/ohmyzsh/ohmyzsh/wiki
# RUN sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
RUN sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

ENV DEBIAN_FRONTEND=dialog \
    LANG=C.UTF-8 \
    LC_ALL=C.UTF-8