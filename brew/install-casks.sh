#!/usr/bin/env bash

# Add additional repositories
brew tap homebrew/cask-drivers
brew tap homebrew/cask-versions

# Browsers
brew install --cask \
	brave-browser \
	firefox \
	firefox-developer-edition \
	google-chrome \
	google-chrome-dev \
	microsoft-edge \
	microsoft-edge-dev \
	opera \
	safari-technology-preview

# Development
brew install --cask \
	adobe-creative-cloud \
	browserstacklocal \
	docker \
	github \
	graphiql \
	imageoptim \
	iterm2 \
	jetbrains-toolbox \
	postman \
	sequel-pro \
	sketch \
	sublime-text \
	virtualbox \
	visual-studio-code \
	webponize

# Utilities
brew install --cask \
	1password \
	alfred \
	appcleaner \
	authy \
	backblaze \
	backblaze-downloader \
	bettertouchtool \
	cakebrew \
	disk-inventory-x \
	dropbox \
	flux \
	google-backup-and-sync \
	gpg-suite \
	handbrake \
	keepingyouawake \
	netgear-switch-discovery-tool \
	onyx \
	skitch \
	the-unarchiver \
	viscosity

# Entertainment
brew install --cask \
	lastfm \
	plex-media-player \
	spotify \
	steam \
	twitch \
	vlc

# Social
brew install --cask \
	discord \
	messenger \
	microsoft-teams \
	signal \
	slack \
	telegram \
	whatsapp \
	zoom

# Quick Look Plugins
brew install --cask \
	qlcolorcode \
	qlimagesize \
	qlmarkdown \
	qlprettypatch \
	qlstephen \
	qlvideo \
	quicklook-csv \
	quicklook-json \
	webpquicklook
