#!/bin/bash

VERSION=$(curl -sSf https://curseforge.overwolf.com/electron/linux/latest-linux.yml | grep -m1 '^version:' | awk '{print $2}')
echo "$VERSION"
