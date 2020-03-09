#!/bin/bash

# to maintain cask:
# `brew update && brew upgrade && brew cleanup && brew cask cleanup`

# Install native apps
echo "Installing essential apps..."
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install caskroom/cask/brew-cask
brew tap caskroom/versions

# Important stufff
brew cask install java
brew install diff-so-fancy
brew install git
brew install maven
brew install node
brew install yarn
brew install zsh
brew install github/gh/gh

# Dev apps
echo "Installing dev apps..."
brew cask install iterm2                                           # Great terminal
brew cask install dash                                             # Dev documentation
brew cask install postman                                          # Test APIs
brew cask install sim-daltonism                                    # Test colourblindness
brew cask install tower                                            # Git GUI
brew cask install visual-studio-code                               # IDE; so good

# Browsers
echo "Installing browsers..."
brew cask install firefox                                          # Mozilla's browser
brew cask install google-chrome                                    # Google's browser
brew cask install microsoft-edge                                   # Microsoft's browser

# Productivity apps
echo "Installing productivity apps..."
brew cask install adobe-creative-cloud                             # Adobe's app manager
brew cask install alfred                                           # App launcher
brew cask install bartender                                        # Menu bar icon management
brew cask install bettertouchtool                                  # Customize keyboard, mouse, trackpad
brew cask install cheatsheet                                       # Shows keyboard shortcuts in any app
brew cask install colorsnapper                                     # Colour-grabbing
brew cask install disk-inventory-x                                 # Find big junk files on your HDD
brew cask install dropbox                                          # File syncing
brew cask install evernote                                         # Note taking
brew cask install google-drive-file-stream                         # File syncing
brew cask install istat-menus                                      # Insight into hardware
brew cask install keycastr                                         # Shows keypresses onscreen for presentations
brew cask install licecap                                          # High performance GIF maker
brew cask install marshallofsound-google-play-music-player         # Music streaming service
brew cask install nordvpn                                          # VPN service
brew cask install onepassword                                      # Password manager
brew cask install smooze                                           # Control scrolling
brew cask install transmit                                         # FTP client
brew cask install vlc                                              # Plays any video/media

# Social apps
echo "Installing social apps..."
brew cask install discord                                          # Gaming chat app
brew cask install slack                                            # Chat app
brew cask install tweetbot                                         # Twitter app
brew cask install zoomus                                           # Meeting app

# Cleanup
echo "Cleaning up!"
brew cleanup --force
rm -f -r /Library/Caches/Homebrew/*
