#!/usr/bin/env bash

if [[ -z "$PROFILE" ]]; then
	echo "PROFILE is not set. Exiting..."
	exit 1
fi

# Development
brew install commitizen
brew install gh
brew install git
brew install git-extras
brew install hadolint
brew install ollama

if [[ "$PROFILE" == "work" ]]; then
	brew install openjdk@11
	brew install pyenv
fi

# Utilities
brew install coreutils
brew install fdupes
brew install htop
brew install jq
brew install moreutils
brew install rsync
brew install zplug
brew install zsh

if [[ "$PROFILE" == "home" ]]; then
	brew install asimov
fi

# Novelty
brew install gti
