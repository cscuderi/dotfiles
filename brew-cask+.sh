echo "Installing additional apps..."

# Additional dev apps
brew cask install dash                                     # Dev documentation

# Additional frequently used apps
brew cask install dropbox                                  # File syncing
brew cask install google-drive                             # File syncing
brew cask install onepassword                              # Password manager

# Productivity apps
brew cask install colorsnapper                             # Colour-grabbing
brew cask install transmit                                 # FTP client
brew cask install discord                                  # Gaming chat app
brew cask install spectacle                                # Window manager
brew cask install bartender                                # Menu bar icon management
brew cask install evernote                                 # Note taking
brew cask install itsycal                                  # Simple calendar
brew cask install the-unarchiver                           # Best archiving tool

# Other apps
brew cask install disk-inventory-x                         # Find big junk files on your HDD
brew cask install vlc                                      # Plays any video/media
brew cask install google-play-music-desktop-player         # Music streaming service
brew cask install flux                                     # Blue light manager
brew cask install adobe-creative-cloud                     # Adobe's app manager
brew cask install sketch                                   # Graphic editor

# Fonts
echo "Installing fonts..."
brew tap caskroom/fonts
brew cask install font-inconsolata                         # Monospaced font
brew cask install font-hack                                # Monospaced font
brew cask install font-source-code-pro-for-powerline       # Monospaced font for iTerm
brew cask install font-space-mono                          # Decorative monospaced font