#!/bin/bash

# https://docs.docker.com/engine/install/linux-postinstall/#manage-docker-as-a-non-root-user
sudo groupadd docker
sudo usermod -aG docker $USER
newgrp docker
docker run hello-world

# https://docs.docker.com/engine/install/linux-postinstall/#configure-docker-to-start-on-boot-with-systemd
sudo systemctl enable docker.service
sudo systemctl enable containerd.service
