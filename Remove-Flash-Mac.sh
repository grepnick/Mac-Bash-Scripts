#!/bin/bash

file_paths=(
    "/Applications/Adobe Flash Player Install Manager.app"
    "/Applications/Utilities/Adobe Flash Player Install Manager.app"
)

for path in "${file_paths[@]}"; do
    if [ -d "$path" ]; then
        echo "Found $path, uninstalling"
        "$path/Contents/MacOS/Adobe Flash Player Install Manager" -uninstall 2>/dev/null
        #sleep 5
        echo "Removing $path"
        rm -rf "$path"
    fi
done
