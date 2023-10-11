# Check if iCloud is enabled on a device
Result="True"
for user in $(dscl . list /Users UniqueID | awk '$2 >= 500 {print $1}'); do
if [ -e /Users/$user/Library/Mobile\ Documents/com~apple~CloudDocs/ ]; then
    Result="False"
fi
done
echo $Result
