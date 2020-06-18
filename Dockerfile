FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive
WORKDIR /AOSP/
RUN apt update && apt install -y \
    wget unzip bc bison build-essential ccache curl \
    flex g++-multilib gcc-multilib git gnupg gperf \
    imagemagick lib32ncurses5-dev lib32readline-dev \
    lib32z1-dev liblz4-tool libncurses5 libncurses5-dev \
    libsdl1.2-dev libssl-dev libxml2 libxml2-utils \
    lzop pngcrush rsync schedtool squashfs-tools \
    xsltproc zip zlib1g-dev openjdk-8-jdk python-is-python3
RUN wget https://dl.google.com/android/repository/platform-tools-latest-linux.zip && \
    unzip platform-tools-latest-linux.zip -d . && \
    mv platform-tools/* /usr/local/bin/ && \
    rm -r platform-tools*
RUN mkdir -p android/lineage
RUN curl https://storage.googleapis.com/git-repo-downloads/repo > /usr/local/bin/repo && \
    chmod a+x /usr/local/bin/repo
