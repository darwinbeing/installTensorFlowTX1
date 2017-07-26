#!/bin/bash
# NVIDIA Jetson TX1
cd $TF_BUILD_DIR/tensorflow
bazel-bin/tensorflow/tools/pip_package/build_pip_package /tmp/tensorflow_pkg
mv /tmp/tensorflow_pkg/*.whl $TF_BUILD_DIR/
