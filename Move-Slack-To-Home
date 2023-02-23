#!/bin/zsh 

# MDM script to move the Slack binary the current user's $HOME/Applications (for non-admin update installation)

SLACK=/Applications/Slack.app
RECEIPT=$SLACK/Contents/_MASReceipt/receipt
CURRENTUSER=$( scutil &lt;&lt;&lt; "show State:/Users/ConsoleUser" | awk '/Name :/ &amp;&amp; ! /loginwindow/ { print $3 }' )
SLACKHOME=/Users/$CURRENTUSER/Applications
# Test if Slack is installed
if [ -d $SLACK ]; then
  echo "Slack exists"
  # Test if Slack was purchased from the Mac App Store
  if [ -f $RECEIPT ]; then
    echo "Slack purchased from Mac App Store... Exiting."
    exit
  else
  # Create Applications folder for $CURRENTUSER
  if [ ! -d $SLACKHOME ]; then
    echo "Creating $SLACKHOME"
    mkdir $SLACKHOME &amp;&amp; chown -R $CURRENTUSER\:staff $SLACKHOME
  fi
    Killall -9 Slack
    echo "Moving $SLACK to $SLACKHOME" 
    mv $SLACK $SLACKHOME
    chown -R $CURRENTUSER\:staff $SLACKHOME/Slack.app &amp;&amp; chmod -R 755 $SLACKHOME/Slack.app
  fi
else 
  echo "Slack not installed" 
fi
echo "DONE"
