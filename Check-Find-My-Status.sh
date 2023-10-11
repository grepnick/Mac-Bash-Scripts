#!/bin/sh
#
# Will reply Set if Find My Mac is set for this Mac
#

fmmToken=$(/usr/sbin/nvram -x -p | /usr/bin/grep fmm-mobileme-token-FMM)

if [ -z "$fmmToken" ];
then
    echo "<result>Not Set</result>"
else
    echo "<result>Set</result>"
fi
