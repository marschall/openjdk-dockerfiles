#!/bin/bash

mkdir jdk9

docker run -ti --rm -v `pwd -P`/jdk9:/jdk marschall/build-openjdk:9

