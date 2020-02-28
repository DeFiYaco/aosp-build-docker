FROM ubuntu:16.04

WORKDIR /AOSP/
# Java environment setup
RUN apt-get update && \
    apt-get install -y \
     openjdk-8-jdk
# Installing tools
RUN apt-get update && \
    apt-get install -y \
        bison \
        g++-multilib \
        git \
        gperf \
        libxml2-utils \
        make \
        zip \
        liblz4-tool \
        curl
# Installing Repo
RUN apt-get update && \
    apt-get install -y \
        repo