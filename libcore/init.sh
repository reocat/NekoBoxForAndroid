#!/bin/bash

# Install gomobile
if [ ! -f "$GOPATH/bin/gomobile" ]; then
    git clone --depth 1 --branch v0.1.3 https://github.com/SagerNet/gomobile.git
    pushd gomobile/cmd
    pushd gomobile
    go install -v
    popd
    pushd gobind
    go install -v
    popd
    popd
    rm -rf gomobile
fi

gomobile init
