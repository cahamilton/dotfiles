#!/usr/bin/env bash

# Add additional repositories
brew tap homebrew/cask-fonts

# Install fonts
brew install --cask \
	font-fira-code \
	font-meslo-for-powerline \
	font-meslo-lg \
	font-ubuntu \
	font-ubuntu-condensed \
	font-ubuntu-mono
