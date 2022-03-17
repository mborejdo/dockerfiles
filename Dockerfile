FROM ubuntu:focal
RUN apt-get update && apt-get install -y --no-install-recommends \
    curl \
    wget \
    perl \
    fontconfig \
    ghostscript \
    ca-certificates \
    make \
    build-essential \
    nasm \
    git \
    &&\
    \
    apt-get autoremove -y &&\
    apt-get clean -y &&\
    rm -rf /var/lib/apt/lists/*