#!/usr/bin/env bash

sudo systemsetup -getremotelogin
sudo systemsetup -setremotelogin on
#sudo dseditgroup -o edit -a james -t group com.apple.access_ssh
#dseditgroup -o create -q james -t user com.apple.access_ssh
sudo dseditgroup -o edit -a ${USER} -t user com.apple.access_ssh
sudo /System/Library/CoreServices/RemoteManagement/ARDAgent.app/Contents/Resources/kickstart -activate -configure -access -on -users admin,james -privs -all -restart -agent -menu
sudo systemsetup -getremotelogin
