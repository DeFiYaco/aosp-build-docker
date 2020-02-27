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
RUN mkdir ~/bin && curl http://commondatastorage.googleapis.com/git-repo-downloads/repo > ~/bin/repo && chmod a+x ~/bin/repo

# Setting PATH variable
SHELL ["/bin/bash", "-c"] 
RUN echo 'export PATH=~/bin:$PATH' >> ~/.bashrc && source ~/.bashrc

# Initialise the AOSP tree

