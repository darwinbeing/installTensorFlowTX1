#!/bin/bash
# NVIDIA Jetson TX1
# python 2.7
# Tensorflow 1.3.0
TF_BUILD_DIR=${TF_BUILD_DIR:=$HOME}

pushd .

sudo swapoff -a

cd $TF_BUILD_DIR
sudo rm -rf bin grpc-java include lib protobuf tensorflow bazel-0.5.3-dist swap

# sudo rm -rf swap/swapfile

popd

PYTHON_BIN_PATH=${PYTHON_BIN_PATH:=/usr/bin/python2.7}
# PYTHON_BIN_PATH=${PYTHON_BIN_PATH:=/usr/bin/python3.5}
PYTHON_LIB_PATH=${PYTHON_LIB_PATH:=/usr/lib/python2.7/dist-packages}
# PYTHON_LIB_PATH=${PYTHON_LIB_PATH:=/usr/lib/python3/dist-packages}

./createSwap.sh
./setLocalLib.sh
./installPrerequisites.sh
./cloneTensorFlow.sh
./setTensorFlowEV.sh
./buildTensorFlow.sh
./packageTensorFlow.sh

# sudo pip install --upgrade $TF_BUILD_DIR/tensorflow-1.2.1-cp27-cp27mu-linux_aarch64.whl
