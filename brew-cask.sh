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
brew install git
brew install node
brew install yarn
brew install diff-so-fancy
brew install zsh
brew install maven

# Dev apps
echo "Installing dev apps..."
brew cask install iterm2                                       # Great terminal
brew cask install visual-studio-code                           # IDE; so good
brew cask install docker                                       # Software containers
brew cask install kitematic                                    # GUI for Docker
brew cask install postman                                      # Test APIs
brew cask install tunnelblick                                  # VPN

# Productivity
echo "Installing productivity apps..."
brew cask install licecap                                      # High performance gif maker
brew cask install slack                                        # Chat app
brew cask install alfred                                       # App launcher
brew cask install joinme                                       # Free screensharing

# Browsers
echo "Installing browsers..."
brew cask install google-chrome                                # Browser of choice
brew cask install google-chrome-canary                         # Chrome on the edge
brew cask install firefox                                      # Other browser

# Cleanup
echo "Cleaning up"
brew cleanup --force
rm -f -r /Library/Caches/Homebrew/*
