FROM ubuntu:16.04

WORKDIR /AOSP/

RUN apt-get update && \
    apt-get install -y \
     openjdk-8-jdk

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

RUN mkdir ./bin && curl http://commondatastorage.googleapis.com/git-repo-downloads/repo > ./bin/repo && chmod a+x ./bin/repo
SHELL ["/bin/bash", "-c"] 
RUN echo 'export PATH=/AOSP/bin:$PATH' >> ~/.bashrc && source ~/.bashrc