#!/bin/bash
# NVIDIA Jetson TX1
# Install TensorFlow dependencies and prerequisites
# Install Java and other dependencies by apt-get
./scripts/installDependencies.sh
./scripts/buildProtobuf.sh
./scripts/buildGRPC.sh
./scripts/buildBazel.sh
