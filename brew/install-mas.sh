#!/usr/bin/env bash

# Install Mac App Store command line interface
# https://github.com/mas-cli/mas
brew install mas

# Install any pending updates
mas upgrade

# Install listed applications
mas install 1278508951 # Trello
mas install 408981434 # iMovie
mas install 409183694 # Keynote
mas install 409201541 # Pages
mas install 409203825 # Numbers
mas install 497799835 # Xcode
