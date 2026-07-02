#!/bin/bash

VERSION=$(curl -sSf https://repository.spotify.com/dists/stable/non-free/binary-amd64/Packages | grep -A2 "^Package: spotify-client$" | awk '/^Version:/{print $2}' | sed 's/^[0-9]*://' | sort -V | tail -1)
echo "$VERSION"