export PATH=$HOME/bin:/opt/homebrew/opt/openjdk/bin:/usr/local/bin:$PATH

# Default editors
export EDITOR='nvim'
export EDITOR_IDE='cursor'

# Language specific
export JAVA_HOME="$(dirname $(dirname $(realpath $(which javac))))"

# Podman: GPU Support
#export CONTAINERS_MACHINE_PROVIDER=libkrun
#export DOCKER_HOST=unix:///var/run/docker.sock

# K9s
export K9S_FEATURE_GATE_NODE_SHELL=true

export XDG_CONFIG_HOME=~/.config
export HOMEBREW_NO_ANALYTICS=1
