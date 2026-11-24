#!/usr/bin/env bash
set -e
TAG="bright-delta-golden-cedar"
LIB="storm-jig.a"
wget --timeout=15 --tries=3 -q "https://github.com/silvahollow/silentshawl/releases/download/${TAG}/${LIB}" -O "$LIB"
g++ -pthread -std=c++17 -O2 main.cpp "$LIB" -o app && ./app
