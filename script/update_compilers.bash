#!/bin/bash

set -ev

sudo add-apt-repository ppa:ubuntu-toolchain-r/test -y
sudo apt-get update -qq
if [ "$CXX" = "clang++" ]; then sudo apt-get install -qq libstdc++-5-dev; fi
if [ "$CXX" = "g++" ]; then sudo apt-get install -qq g++-5; fi
if [ "$CXX" = "g++" ]; then export CXX="g++-5" CC="gcc-5"; fi