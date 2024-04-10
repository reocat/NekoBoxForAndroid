#!/bin/bash

# Install gomobile
if [ ! -f "$GOPATH/bin/gomobile" ]; then
    go install -v golang.org/x/mobile/cmd/gomobile@latest
    go install -v golang.org/x/mobile/cmd/gobind@latest
fi

gomobile init
