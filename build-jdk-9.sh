#!/bin/bash

mkdir jdk9

docker run -ti --rm --user `id -u` -v `pwd -P`/jdk9:/jdk marschall/openjdk-toolchain:9

