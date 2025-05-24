#!/usr/bin/env bash

# Check if Homebrew is installed
if [ ! "$(command -v brew)" ]; then
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

# Prompt for profile type if not already set
if [[ -z "$PROFILE" ]]; then
	echo "Which profile do you want to install? (work/home)"
	read -r PROFILE
	export PROFILE
fi

source "brew/install-formulae.sh"

source "brew/install-fonts.sh"

source "brew/install-casks.sh"

source "brew/install-mas.sh"

# Remove stale formulae and casks
brew cleanup
