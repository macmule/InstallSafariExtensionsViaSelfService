#!/bin/bash
####################################################################################################
#
# More information: https://macmule.com/
#
# GitRepo: https://github.com/macmule/
#
# License: https://macmule.com/license/
#
###################################################################################################
#
####################################################################################################
#
# DEFINE VARIABLES & READ IN PARAMETERS
#
####################################################################################################

# HARDCODED VALUE FOR "PATHTOEXTENSION" IS SET HERE
pathToExtension=""

# CHECK TO SEE IF A VALUE WAS PASSED IN PARAMETER 4 AND, IF SO, ASSIGN TO "PATHTOEXTENSION"
if [ "$4" != "" ] && [ "$pathToExtension" == "" ];then
    pathToExtension=$4
fi

####################################################################################################

### Launch Safari if not open
osascript -e 'tell application "Safari"
	activate
	end tell'

### Prompt the user to install the extension given @ $4
osascript -e 'tell application "Safari" 
	open "'"$pathToExtension"'"
end tell'

### Exit silently, as will error if exists & if times out for whatever reason
exit 0