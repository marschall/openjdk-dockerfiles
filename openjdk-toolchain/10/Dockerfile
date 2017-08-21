FROM ubuntu:17.04

ADD build.sh /

RUN apt-get update && apt-get install -y \
  mercurial \
  zip unzip \
# bootstrap JVM
  openjdk-9-jdk \
# X11 libraries
  libx11-dev libxext-dev \
  libxrender-dev libxtst-dev libxt-dev \
# ALSA library
  libasound2-dev \
# FreeType 2 font engine
  libfreetype6-dev \
# CUPS library
  libcups2-dev

env LANG C

VOLUME ["/jdk"]

CMD ["sh", "/build.sh"]

