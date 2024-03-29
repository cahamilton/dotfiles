#!/usr/bin/env bash

# Check if Homebrew is installed
if test ! ["$(command -v brew)"]; then
	echo "Installing Homebrew..."

	# Install Homebrew
	bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
	echo "Updating Homebrew and formulae..."

	# Update to latest Homebrew
	brew update

	# Upgrade existing formulae
	brew upgrade
fi

source "brew/install-formulae.sh"

source "brew/install-fonts.sh"

source "brew/install-casks.sh"

source "brew/install-mas.sh"

# Remove stale formulae and casks
brew cleanup
