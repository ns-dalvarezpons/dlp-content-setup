# Source: https://netskope.atlassian.net/wiki/spaces/DataSecurityTeam/pages/4728488101/Compiling+DataPlane+with+Rosetta+2+on+Mac+M3
FROM ubuntu:20.04
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get upgrade -y
# Install dependencies
# TODO


# RUN apt-get update && \
#     apt-get upgrade -y && \
#     apt-get install -y \
#     build-essential \
#     wget \
#     unzip \
#     git \
#     vim \
#     gcc \
#     g++ \
#     ssh \
#     autoconf \
#     automake \
#     libtool \
#     make \
#     sudo \
#     pkg-config \
#     libffi-dev \
#     apt-utils \
#     libtool-bin \
#     software-properties-common \
#     && rm -rf /var/lib/apt/lists/*
# RUN add-apt-repository universe && \
#     apt-get update && \
#     apt-get install -y python3.8 python3.8-dev python3.8-venv python3-pip && \
#     ln -s /usr/bin/python3 /usr/bin/python && \
#     rm -rf /var/lib/apt/lists/*

# # Install docker
# # Add Docker's official GPG key:
# RUN apt-get update -y && \
#     apt-get install ca-certificates curl && \
#     install -m 0755 -d /etc/apt/keyrings && \
#     curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc && \
#     chmod a+r /etc/apt/keyrings/docker.asc

# # Add the repository to Apt sources:
# RUN echo \
#     "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
#     $(. /etc/os-release && echo "${UBUNTU_CODENAME:-$VERSION_CODENAME}") stable" | \
#     sudo tee /etc/apt/sources.list.d/docker.list > /dev/null && \
#     apt-get update
# # Install latest version of Docker
# RUN  apt-get install -y \
#     docker-ce \
#     docker-ce-cli \
#     containerd.io \
#     docker-buildx-plugin \
#     docker-compose-plugin

RUN useradd -ms /bin/bash dev
# Warning:  password hardcoded
RUN echo "dev:test123" | chpasswd
RUN usermod -aG sudo dev
WORKDIR /home/dev/edk
USER dev

# RUN git config --global user.name "David Álvarez Pons"
# RUN git config --global user.email "dalvarezpons@netskope.com"

CMD ["/bin/bash"]
