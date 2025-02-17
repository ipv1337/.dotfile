#!/usr/bin/env bash

colima start --cpu 8 --memory 8 --disk 100 \
--vm-type vz \
--runtime docker \
--kubernetes --activate \
--network-address
