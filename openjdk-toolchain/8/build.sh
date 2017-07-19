#!/bin/sh

hg clone http://hg.openjdk.java.net/jdk8/jdk8 /jdk

cd /jdk

sh get_source.sh

bash ./configure --enable-debug --enable-unlimited-crypto

make clean
make all

