#!/bin/bash
# NVIDIA Jetson TX1
# Install TensorFlow dependencies
# Install Java
sudo add-apt-repository -y ppa:webupd8team/java
sudo apt-get update
sudo apt-get install -y oracle-java8-installer
# Install other dependencies
sudo apt-get install -y zip unzip autoconf automake libtool curl zlib1g-dev maven
sudo apt-get install -y python-numpy swig python-dev python-pip python-wheel python3-numpy python3-dev python3-pip
# Install opencv
sudo apt-get install -y libopencv4tegra-python
# Upgrade pip
sudo pip install --upgrade pip
