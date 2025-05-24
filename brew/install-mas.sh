#!/usr/bin/env bash

if [[ -z "$PROFILE" ]]; then
	echo "PROFILE is not set. Exiting..."
	exit 1
fi

# Check if Mac App Store CLI is installed
if [ ! "$(command -v mas)" ]; then
	echo "Installing Mac App Store CLI..."

	# https://github.com/mas-cli/mas
	brew install mas
else
	# Install any pending updates
	mas upgrade
fi

# Install listed applications
mas install 1278508951 # Trello
mas install 409201541  # Pages
mas install 409203825  # Numbers
mas install 497799835  # Xcode

if [[ "$PROFILE" == "home" ]]; then
	mas install 463362050 # PhotoSweeper
	mas install 905953485 # NordVPN
fi

if [[ "$PROFILE" == "work" ]]; then
	mas install 425955336 # Skitch
fi
