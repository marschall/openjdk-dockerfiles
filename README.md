Builidng OpenJDK with Docker
============================

The following dockerfiles allows you to locally build a fastdebug OpenJDK with unlimited crypto policy without having to install all the necessary libraries on your system.

You can build OpenJDK with

```sh
./build-openjdk-9-toolchain.sh
./build-jdk-9.sh
```

`./build-openjdk-9-toolchain.sh` builds the docker image with all the tools to build OpenJDK, `./build-openjdk-9.sh` builds OpenJDK using the docker image. The final JVM and the source code will end up in the `./jdk9/build/linux-x86_64-normal-server-fastdebug/jdk` folder.

In general the more CPU and memory resources the docker container has the quicker the build finishes. Unfortunately one of the slowest parts is downloading all the sources.

Caveats
-------

 * Currently OpenJDK 10 does not build because the OpenJDK 9 bootstrap JVM in Ubuntu is too old.


Credits
-------

A lot is taken from

 * http://arturmkrtchyan.com/building-openjdk-9-on-ubuntu
 * https://github.com/cloudfoundry/java-buildpack-dependency-builder/blob/master/openjdk.sh
 * https://github.com/hgomez/obuildfactory/wiki/How-to-build-and-package-OpenJDK-8-on-Linux
