export PATH=$HOME/bin:/opt/homebrew/opt/openjdk/bin:/usr/local/bin:$PATH

export EDITOR='nvim'

export JAVA_HOME="$(dirname $(dirname $(realpath $(which javac))))"

# Podman: GPU Support
export CONTAINERS_MACHINE_PROVIDER=libkrun
export DOCKER_HOST=unix:///var/run/docker.sock

export XDG_CONFIG_HOME=~/.config
export HOMEBREW_NO_ANALYTICS=1
