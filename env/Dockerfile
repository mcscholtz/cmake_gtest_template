# Use the latest ubuntu LTS as the base image
FROM ubuntu:18.04
USER root
WORKDIR /tmp

# update system
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y \
    cmake \
    build-essential \
    clang-9

RUN ln -s /usr/bin/clang++-9 /usr/bin/clang++
RUN ln -s /usr/bin/clang-9 /usr/bin/clang
