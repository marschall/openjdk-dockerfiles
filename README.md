Builidng OpenJDK with Docker
============================

The following dockerfiles allows you to locally build a fastdebug OpenJDK without having to install all the necessary libraries on your system.


```sh
./build-openjdk-9-toolchain.sh
./build-jdk-9.sh
```

`./build-openjdk-9-toolchain.sh` builds the docker image with all the tools to build OpenJDK, `./build-openjdk-9.sh` builds OpenJDK using the docker image. The final JVM will end up in the `./jdk9` folder.

A lot is taken from http://arturmkrtchyan.com/building-openjdk-9-on-ubuntu. Also configure checks and complains if packages are missing.
