FROM debian:stable-slim
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y --no-install-recommends \
    apt-transport-https \
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