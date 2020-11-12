FROM ubuntu:latest

RUN apt update && \
    DEBIAN_FRONTEND=noninteractive \
    apt install -y \
    gcc \
    make \
    git \
    binutils \
    libc6-dev \
    gdb \
    sudo

RUN adduser --disabled-password --gecos '' tutorial
RUN echo 'tutorial ALL=(root) NOPASSWD:ALL' > /etc/sudoers.d/tutorial
USER tutorial

WORKDIR /home/tutorial/tutorial