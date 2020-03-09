FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
    cmake \
    g++ \
    git \
    lcov \
    make \
    && git clone https://github.com/google/googletest.git /googletest \
    && mkdir -p /googletest/build \
    && cd /googletest/build \
    && cmake .. \
    && make \
    && make install \
    && cd / \
    && rm -rf /googletest \
    && rm -rf /var/lib/apt/lists/*
