# installTensorFlowTX1
July 25, 2017
Install TensorFlow v1.2.1 on NVIDIA Jetson TX1 Development Kit

Jetson TX1 is flashed with JetPack 3.0 which installs:
* JetPack L4T 3.0 an Ubuntu 16.04 64-bit variant (aarch64)
* CUDA 8.0
* cuDNN 5.1.5


#### install.sh

Auto run all script and install tensorflow 1.2.0. Uses python 2.7, python3.5.

```
# compile tensorflow for python2
$ TF_BUILD_DIR=/data/tensorflow ./install.sh

# select python3
$ sudo update-alternatives --install /usr/bin/python python /usr/bin/python3.5 20
# modify setTensorFlowEV.sh
# PYTHON_BIN_PATH=/usr/bin/python3
# PYTHON_LIB_PATH=/usr/lib/python3/dist-packages

# compile tensoflow for python3
$ TF_BUILD_DIR=/data/tensorflow ./install.sh

```


#### Reference
<ul>
<li>https://github.com/samfk6/installTensorflow-TX1.git</li>
<li>https://github.com/jetsonhacks</li>
<li>https://github.com/ljanyst</li>
</ul>

