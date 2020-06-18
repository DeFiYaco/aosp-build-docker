FROM ubuntu:20.04

WORKDIR /AOSP/
RUN apt update && apt install -y \
    wget unzip bc bison build-essential ccache curl \
    flex g++-multilib gcc-multilib git gnupg gperf \
    imagemagick lib32ncurses5-dev lib32readline-dev \
    lib32z1-dev liblz4-tool libncurses5 libncurses5-dev \
    libsdl1.2-dev libssl-dev libxml2 libxml2-utils \
    lzop pngcrush rsync schedtool squashfs-tools \
    xsltproc zip zlib1g-dev
RUN wget https://dl.google.com/android/repository/platform-tools-latest-linux.zip
RUN unzip platform-tools-latest-linux.zip -d .
RUN mv platform-tools/* /usr/local/bin/
RUN rm -r platform-tools*