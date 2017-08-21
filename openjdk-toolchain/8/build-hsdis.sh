#!/bin/sh

# https://github.com/AdoptOpenJDK/jitwatch/wiki/Building-hsdis
# https://www.chrisnewland.com/building-hsdis-on-linux-amd64-on-debian-369

cd /jdk
cd src/share/tools/hsdis

BINUTILSVERSION=2.26.1

wget https://ftp.heanet.ie/mirrors/gnu/binutils/binutils-${BINUTILSVERSION}.tar.gz
tar -xzf binutils-${BINUTILSVERSION}.tar.gz

# sudo apt get install makeinfo

make clean
make BINUTILS=binutils-${BINUTILSVERSION} ARCH=amd64
