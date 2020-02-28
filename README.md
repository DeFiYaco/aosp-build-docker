# aosp-build-docker
Docker image for building AOSP roms

Minimal build environment for syncing device trees using repo tool and compiling ROM.

# Prerequisites

* Preferable some linux distribution(64 bit)
* Working *docker* instalation
* At least 250 GB of free disk space to check out code and an extra 150 GB to build it
* Minimum 8 GB of RAM but with that use option *-j1* for all commands to do everything single threaded

# How to use

* Clone this repository
* docker build -t <imageTag> .
* docker run -it -v <pathOnHost>:/AOSP/ <imageTag> bash

# How to sync
* git config --global user.name "Your Name"
* git config --global user.email "you@example.com"
* repo init -u https://android.googlesource.com/platform/manifest
* repo sync