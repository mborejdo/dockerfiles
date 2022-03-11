FROM ubuntu:focal AS base
RUN apt-get update && apt-get install -y --no-install-recommends \
    curl \
    wget \
    perl \
    fontconfig \
    ghostscript \
    ca-certificates \
    make \
    build-essential \
    nasm &&\
    \
    apt-get autoremove -y &&\
    apt-get clean -y &&\
    rm -rf /var/lib/apt/lists/*


ADD /entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]