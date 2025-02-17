#!/usr/bin/env bash

# ~/.local/share/containers/podman/machine


#echo ${1}
if [ ${1} == "m" ] || [ ${1} == "medium" ]
then
        podman machine init --cpus=8 --memory=8192 --rootful
else
        podman machine init --cpus=8 --memory=1024 --rootful
fi

podman machine list
