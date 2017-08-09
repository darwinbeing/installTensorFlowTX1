#!/bin/bash
# NVIDIA Jetson TX1
# python 2.7
# Tensorflow 1.2.0
TF_BUILD_DIR=${TF_BUILD_DIR:=$HOME}
export TF_BUILD_DIR

./createSwap.sh
./setLocalLib.sh
./installPrerequisites.sh
./cloneTensorFlow.sh
./setTensorFlowEV.sh
./buildTensorFlow.sh
./packageTensorFlow.sh

# sudo pip install --upgrade $TF_BUILD_DIR/tensorflow-1.2.1-cp27-cp27mu-linux_aarch64.whl
