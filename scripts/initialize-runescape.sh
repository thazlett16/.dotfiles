#/bin/bash

flatpak install flathub com.adamcake.Bolt

flatpak override --user --show com.adamcake.Bolt

flatpak override --user --reset com.adamcake.Bolt

flatpak override --user --show com.adamcake.Bolt
