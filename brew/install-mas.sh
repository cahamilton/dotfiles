#!/usr/bin/env bash

# Install Mac App Store command line interface
# https://github.com/mas-cli/mas
brew install mas

# Install any pending updates
mas upgrade

# Install listed applications
mas install 1278508951 # Trello
mas install 409201541  # Pages
mas install 463362050  # PhotoSweeper
mas install 409203825  # Numbers
mas install 497799835  # Xcode
mas install 905953485  # NordVPN
