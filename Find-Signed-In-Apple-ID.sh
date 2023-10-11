#!/bin/bash

# Check what Apple ID is signed in on a device 

for user in $(dscl . list /Users UniqueID | awk '$2 >= 500 {print $1}'); do
    userHome=$(dscl . read /Users/"$user" NFSHomeDirectory | sed 's/NFSHomeDirectory://' | grep "/" | sed 's/^[ \t]*//')
    appleid=$(dscl . readpl "${userHome}" dsAttrTypeNative:LinkedIdentity appleid.apple.com:linked\ identities:0:full\ name 2> /dev/null | awk -F'full name: ' '{print $2}')
    if [[ "${appleid}" == "" ]]; then
        echo "No AppleID for user:${user}"
    else
        echo "username:${user} AppleID:${appleid}"
    fi
done
