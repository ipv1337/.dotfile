#!/usr/bin/env bash

sudo systemsetup -setremotelogin on
sudo dseditgroup -o edit -a james -t group com.apple.access_ssh
