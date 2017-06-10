#!/bin/bash

# to maintain cask ....
#     brew update && brew upgrade brew-cask && brew cleanup && brew cask cleanup`

# Install native apps
echo "Installing native apps..."
brew install caskroom/cask/brew-cask
brew tap caskroom/versions

# Frequently used apps
echo "Installing frequently used apps..."
brew cask install spectacle                                    # Window manager
brew cask install dropbox                                      # File syncing
brew cask install google-drive                                 # File syncing
brew cask install gyazo                                        # Screenshot/gifs
brew cask install onepassword                                  # Password manager
brew cask install flux                                         # Blue light manager

# Dev apps
echo "Installing dev apps..."
brew cask install iterm2                                       # Great terminal
brew cask install sublime-text                                 # Text editor
brew cask install imagealpha                                   # Image optimizer
brew cask install imageoptim                                   # Image optimizer
brew cask install java                                         # The beast
brew cask install virtualbox                                   # For VM's

# Productivity
echo "Installing productivity apps..."
brew cask install slack                                        # Chat app
brew cask install alfred                                       # App launcher
brew cask install transmit                                     # FTP
brew cask install evernote                                     # Note taking

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
brew cask install licecap                                      # High performance gif maker

# Cleanup
echo "Cleaning up"
brew cleanup --force
rm -f -r /Library/Caches/Homebrew/*
