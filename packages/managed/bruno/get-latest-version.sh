#!/bin/bash

VERSION=$(curl -sSf https://api.github.com/repos/usebruno/bruno/releases/latest | grep '"tag_name"' | awk -F'"' '{print $4}' | sed 's/^v//')
echo "$VERSION"
