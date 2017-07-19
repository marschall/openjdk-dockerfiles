#!/bin/bash

mkdir jdk8

docker run -ti --rm --user `id -u` -v `pwd -P`/jdk8:/jdk marschall/openjdk-toolchain:8

