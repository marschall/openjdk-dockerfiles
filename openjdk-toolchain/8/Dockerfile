FROM ubuntu:14.04
# anything newer will not build

RUN apt-get update && apt-get install -y \
  mercurial \
  zip unzip \
# make and c/c++ std libs
  build-essential \
# bootstrap JVM
  openjdk-7-jdk \
# X11 libraries
  libx11-dev libxext-dev \
  libxrender-dev libxtst-dev libxt-dev \
# ALSA library
  libasound2-dev \
# FreeType 2 font engine
  libfreetype6-dev \
# CUPS library
  libcups2-dev \
# additonal
  cpio

ADD build.sh /

env LANG C
env DISABLE_HOTSPOT_OS_VERSION_CHECK ok

VOLUME ["/jdk"]

CMD ["sh", "/build.sh"]

