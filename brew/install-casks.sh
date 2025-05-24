#!/usr/bin/env bash

if [[ -z "$PROFILE" ]]; then
	echo "PROFILE is not set. Exiting..."
	exit 1
fi

# Browsers
brew install firefox --cask
brew install firefox@developer-edition --cask
brew install google-chrome --cask
brew install google-chrome@dev --cask

if [[ "$PROFILE" == "work" ]]; then
	brew install brave-browser --cask
	brew install microsoft-edge --cask
	brew install microsoft-edge@dev --cask
	brew install opera --cask
	brew install safari-technology-preview --cask
fi

# Development
brew install docker --cask
brew install github --cask
brew install imageoptim --cask
brew install iterm2 --cask
brew install postman --cask
brew install sublime-text --cask
brew install visual-studio-code --cask
brew install webponize --cask

if [[ "$PROFILE" == "work" ]]; then
	brew install adobe-creative-cloud --cask
	brew install altair-graphql-client --cask
	brew install ccmenu --cask
	brew install figma --cask
	brew install jetbrains-toolbox --cask
fi

# Utilities
brew install 1password --cask
brew install chatgpt --cask
brew install ente-auth --cask
brew install gpg-suite-no-mail --cask
brew install handbrake --cask
brew install keepingyouawake --cask
brew install logi-options+ --cask
brew install monitorcontrol --cask
brew install raycast --cask
brew install the-unarchiver --cask

if [[ "$PROFILE" == "home" ]]; then
	brew install disk-inventory-x --cask
	brew install netgear-switch-discovery-tool --cask
	brew install viscosity --cask
fi

if [[ "$PROFILE" == "work" ]]; then
	brew install jordanbaird-ice --cask
fi

# Entertainment
brew install spotify --cask
brew install vlc --cask

if [[ "$PROFILE" == "home" ]]; then
	brew install calibre --cask
	brew install plex-media-player --cask
	brew install steam --cask
	brew install twitch --cask
fi

# Social
brew install discord --cask

if [[ "$PROFILE" == "home" ]]; then
	brew install telegram --cask
	brew install whatsapp --cask
fi

if [[ "$PROFILE" == "work" ]]; then
	brew install microsoft-teams --cask
	brew install slack --cask
fi

# Quick Look Plugins
brew install qlcolorcode --cask
brew install qlimagesize --cask
brew install qlmarkdown --cask
brew install qlprettypatch --cask
brew install qlstephen --cask
brew install qlvideo --cask
brew install quicklook-csv --cask
brew install quicklook-json --cask
brew install webpquicklook --cask
