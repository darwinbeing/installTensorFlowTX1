#!/bin/bash
# Create 8G swap

cd $TF_BUILD_DIR
mkdir swap
cd swap
fallocate -l 8G swapfile
chmod 600 swapfile
mkswap swapfile
sudo swapon swapfile
swapon -s
