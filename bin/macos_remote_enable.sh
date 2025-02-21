#!/usr/bin/env bash

sudo systemsetup -setremotelogin on
#sudo dseditgroup -o edit -a james -t group com.apple.access_ssh
sudo /System/Library/CoreServices/RemoteManagement/ARDAgent.app/Contents/Resources/kickstart -activate -configure -access -on -users admin -privs -all -restart -agent -menu
