FROM jfaleiro/common:latest

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get install --no-install-recommends -y \
    git \
    procps \
    zsh \
    make \
    curl

# see https://github.com/ohmyzsh/ohmyzsh/wiki
# RUN sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
RUN sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

# Clean up
RUN apt-get autoremove -y \
    && apt-get clean -y \
    && rm -rf /var/lib/apt/lists/*
ENV DEBIAN_FRONTEND=dialog \
    LANG=C.UTF-8 \
    LC_ALL=C.UTF-8