#!/bin/sh

hg clone http://hg.openjdk.java.net/jdk8/jdk8 /jdk

cd /jdk

sh get_source.sh
# sh common/bin/hgforest.sh update
# you can look in .hgtags to find all tags
# sh common/bin/hgforest.sh checkout jdk8-b132

bash ./configure --enable-debug --enable-unlimited-crypto\
  --with-freetype-include=/usr/include/freetype2 \
  --with-freetype-lib=/usr/lib/x86_64-linux-gnu

make clean
make all

