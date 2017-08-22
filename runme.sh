#!/bin/bash

sudo rm -rf /usr/bin/python
sudo ln -s /usr/bin/python2.7 /usr/bin/python
TF_BUILD_DIR=/data/tensorflow PYTHON_BIN_PATH=/usr/bin/python2.7 PYTHON_LIB_PATH=/usr/lib/python2.7/dist-packages ./install.sh

sudo rm -rf /usr/bin/python
sudo ln -s /usr/bin/python3.5 /usr/bin/python
TF_BUILD_DIR=/data/tensorflow PYTHON_BIN_PATH=/usr/bin/python3.5 PYTHON_LIB_PATH=/usr/lib/python3/dist-packages ./install.sh
