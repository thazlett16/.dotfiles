# XDG
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"

# Move other zsh files to Config Home
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"

# General environment variables
export CARGO_HOME="$XDG_DATA_HOME"/cargo
export DOCKER_CONFIG="$XDG_CONFIG_HOME"/docker
export GOMODCACHE="$XDG_CACHE_HOME"/go/mod
export GOPATH="$XDG_DATA_HOME"/go
export GRADLE_USER_HOME="$XDG_DATA_HOME"/gradle
export MAVEN_ARGS="--settings $XDG_CONFIG_HOME/maven/settings.xml"
export MAVEN_OPTS=-Dmaven.repo.local="$XDG_DATA_HOME"/maven/repository
export NVM_DIR="$XDG_DATA_HOME"/nvm
export RUSTUP_HOME="$XDG_DATA_HOME"/rustup
export STARSHIP_CONFIG="$XDG_CONFIG_HOME"/starship/starship.toml
export STARSHIP_CACHE="$XDG_CACHE_HOME"/starship

# Defaults
export EDITOR="nano"

