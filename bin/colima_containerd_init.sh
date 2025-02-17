#!/usr/bin/env bash

colima start --cpu 8 --memory 4 --disk 100 \
--vm-type vz \
--runtime containerd \
--kubernetes --activate \
--network-address
