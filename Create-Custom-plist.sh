#!/bin/bash

# Credit Nick Marsh
# Purpose: Create a custom plist in the correct format.

plist_file="/tmp/com.something.something.plist"
destination="/Library/Managed Preferences/something.something.plist"
something="something" # Change to suit your needs
something_value="something"

if [ -f "$destination" ]; then
    echo "Error: $destination already exists. Aborting script."
    exit 1
else
	sudo defaults write "$plist_file" $something" "$something_value"
	sudo plutil -convert xml1 "$plist_file"
	sudo mv "$plist_file" "$destination"
	sudo chmod 644 "$destination"
fi
