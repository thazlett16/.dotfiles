#!/bin/bash

VERSION=$(curl -sSf https://packages.microsoft.com/repos/edge/dists/stable/main/binary-amd64/Packages | grep -A1 "^Package: microsoft-edge-stable$" | awk '/^Version:/{print $2}' | sed 's/-1$//' | sort -V | tail -1)
echo "$VERSION"