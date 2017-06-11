#!/bin/bash

# to maintain cask:
# `brew update && brew upgrade brew-cask && brew cleanup && brew cask cleanup`

# Install native apps
echo "Installing essential apps..."
ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
brew install caskroom/cask/brew-cask
brew tap caskroom/versions

# Important stufff
brew cask install java
brew install git
brew install node
brew install yarn
brew install diff-so-fancy

# Frequently used apps
echo "Installing frequently used apps..."
brew cask install dropbox                                      # File syncing
brew cask install google-drive                                 # File syncing
brew cask install onepassword                                  # Password manager

# Dev apps
echo "Installing dev apps..."
brew cask install iterm2                                       # Great terminal
brew cask install zsh                                          # Terminal shell
brew cask install sublime-text                                 # Text editor
brew cask install imagealpha                                   # PNG optimizer
brew cask install imageoptim                                   # Image optimizer
brew cask install virtualbox                                   # For VM's
brew cask install docker                                       # Software containers
brew cask install kitematic                                    # GUI for Docker
brew cask install dash                                         # Dev documentation
brew cask install postman                                      # Test APIs

# Productivity
echo "Installing productivity apps..."
brew cask install gyazo                                        # Screenshot/gifs
brew cask install licecap                                      # High performance gif maker
brew cask install spectacle                                    # Window manager
brew cask install slack                                        # Chat app
brew cask install alfred                                       # App launcher
brew cask install bartender                                    # Menu bar icon management
brew cask install transmit                                     # FTP
brew cask install evernote                                     # Note taking
brew cask install itsycal                                      # Simple calendar
brew cask install the-unarchiver                               # Best archiving tool
brew cask install colorsnapper                                 # Colour-grabbing
brew cask install joinme                                       # Free screensharing

# Browsers
echo "Installing browsers..."
brew cask install google-chrome                                # Browser of choice
brew cask install google-chrome-canary                         # Chrome on the edge
brew cask install firefox                                      # Other browser
brew cask install torbrowser                                   # Secure browsing

# Other apps
echo "Installing a few more apps..."
brew cask install disk-inventory-x                             # Find big junk files on your HDD
brew cask install vlc                                          # Plays any video/media
brew cask install google-play-music-desktop-player             # Music streaming service
brew cask install sketch                                       # Graphic editor
brew cask install adobe-creative-cloud                         # Adobe's app manager
brew cask install flux                                         # Blue light manager

# Fonts
echo "Installing fonts..."
brew tap caskroom/fonts
brew cask install font-inconsolata
brew cask install font-hack
brew cask install font-source-code-pro-for-powerline
brew cask install font-space-mono

# Cleanup
echo "Cleaning up"
brew cleanup --force
rm -f -r /Library/Caches/Homebrew/*
echo "All done!"
say "Brew installation is done!""
