#!/bin/bash
# NVIDIA Jetson TX1
# TensorFlow Installation
# Build grpc-java compiler
INSTALL_DIR=$PWD
cd $TF_BUILD_DIR
git clone https://github.com/grpc/grpc-java.git
cd grpc-java/
git checkout v1.5.0
patch -p0 < $INSTALL_DIR/patches/grpc-java.v1.5.0.patch
CXXFLAGS="-I$(pwd)/../include" LDFLAGS="-L$(pwd)/../lib" ./gradlew java_pluginExecutable -Pprotoc=$(pwd)/../bin/protoc

