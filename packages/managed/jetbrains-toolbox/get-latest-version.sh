#!/bin/bash

VERSION=$(curl -sSf 'https://data.services.jetbrains.com/products?code=TBA&release.type=release' | grep -oE '"linux":\{"link":"https://download\.jetbrains\.com/toolbox/jetbrains-toolbox-[0-9.]+\.tar\.gz"' | head -1 | grep -oE '[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+')
echo "$VERSION"
