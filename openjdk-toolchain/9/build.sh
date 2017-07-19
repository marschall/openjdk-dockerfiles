#!/bin/sh

hg clone http://hg.openjdk.java.net/jdk9/jdk9 /jdk

cd /jdk

sh get_source.sh

bash ./configure --enable-debug --enable-unlimited-crypto --disable-warnings-as-errors

make clean
make all

