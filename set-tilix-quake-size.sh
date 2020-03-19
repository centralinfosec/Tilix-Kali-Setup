#!/bin/bash

# Set an alias
# alias ts='bash /opt/Central-InfoSec/Tilix-Kali-Setup/set-tilix-quake-size.sh'

# Alias name
# ts == tilix size

# Toggle between 30% and 70% quake window height when no parameters are passed in
# ts

# Change to a specific window height when one parameter is passed in. The parameter must be an integer between 0-100. Only one parameter is allowed
# ts 50

# Get the window height
windowHeight=$(gsettings get com.gexperts.Tilix.Settings quake-height-percent)

# Get the number of arguments
argumentCount=$#

# Check if a window height was not provided, or the first argument is not an integer, or if the first argument is greater than 100
if [ $argumentCount -ne 1 ] || ! [[ "$1" =~ ^[0-9]+$ ]] || [ $1 -gt 100 ]; then

	# Check if the window height is 30
	if [ "$windowHeight" = "30" ]; then

		# Set the window height to 70
		gsettings set com.gexperts.Tilix.Settings quake-height-percent 70

	# The window height is not 30
	else

		# Set the window height to 30
		gsettings set com.gexperts.Tilix.Settings quake-height-percent 30
	fi

# A window height was provided
else

	# Set the window height
	gsettings set com.gexperts.Tilix.Settings quake-height-percent $1
fi