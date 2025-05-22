# Source: https://netskope.atlassian.net/wiki/spaces/DataSecurityTeam/pages/4728488101/Compiling+DataPlane+with+Rosetta+2+on+Mac+M3
FROM ubuntu:20.04
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get upgrade -y
# Install dependencies

RUN apt-get install -y \
    build-essential \
    wget \
    unzip \
    git \
    vim \
    gcc \
    g++ \
    ssh \
    autoconf \
    automake \
    libtool \
    make \
    sudo \
    pkg-config \
    libffi-dev \
    apt-utils \
    libtool-bin \
    software-properties-common \
    && rm -rf /var/lib/apt/lists/*

# TODO
# RUN add-apt-repository universe && \
#     apt-get update && \
#     apt-get install -y python3.8 python3.8-dev python3.8-venv python3-pip && \
#     ln -s /usr/bin/python3 /usr/bin/python && \
#     rm -rf /var/lib/apt/lists/*

RUN useradd -ms /bin/bash dev
# Warning:  password hardcoded
RUN echo "dev:test123" | chpasswd
RUN usermod -aG sudo dev
WORKDIR /home/dev/edk
USER dev

CMD ["/bin/bash"]
