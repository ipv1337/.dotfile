#!/usr/bin/env bash

#display notification "All graphics have been converted." with title "My Graphic Processing Script" subtitle "Processing is complete." sound name "Frog"

#osascript -e 'display notification "${2}" with title "${1}"'

# https://code-maven.com/display-notification-from-the-mac-command-line
# /System/Library/Sounds

/usr/bin/osascript -e "display notification \"$*\""
