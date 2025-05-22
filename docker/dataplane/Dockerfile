FROM ubuntu:20.04
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y \
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
    software-properties-common \
    && rm -rf /var/lib/apt/lists/*
RUN add-apt-repository universe && \
    apt-get update && \
    apt-get install -y python3.8 python3.8-dev python3.8-venv python3-pip && \
    rm -rf /var/lib/apt/lists/*
RUN useradd -ms /bin/bash dev
# Warning:  password hardcoded
RUN echo "dev:test123" | chpasswd
RUN usermod -aG sudo dev

WORKDIR /home/dev/dataplane
USER dev
RUN git config --global --add safe.directory /home/dev/dataplane
CMD ["/bin/bash"]
