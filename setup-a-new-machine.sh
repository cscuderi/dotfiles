# /////////////////////////////////////////////////////////////////////
# Prompt for express install
# /////////////////////////////////////////////////////////////////////
read -n1 -p "\nYou can install extras or just the required items. Do you want to install extras? y / n " additional

read -n1 -p "\nDo you want additional Mac customization (theming, ? y / n " macconfigs

# /////////////////////////////////////////////////////////////////////
# XCode CLI tools
# /////////////////////////////////////////////////////////////////////
if ! xcode-select --print-path &> /dev/null; then

  # Prompt to install the XCode CLI tools
  xcode-select --install &> /dev/null

  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

  # Wait until the XCode CLI tools are installed
  until xcode-select --print-path &> /dev/null; do
    sleep 5
  done

  print_result $? 'Install XCode Command Line Tools'

  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

  # Point the `xcode-select` developer directory to
  # the appropriate directory from within `Xcode.app`
  # https://github.com/alrra/dotfiles/issues/13

  sudo xcode-select -switch /Applications/Xcode.app/Contents/Developer
  print_result $? 'Make "xcode-select" developer directory point to Xcode'

  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

  # Prompt user to agree to the terms of the Xcode license
  # https://github.com/alrra/dotfiles/issues/10

  sudo xcodebuild -license
  print_result $? 'Agree with the XCode Command Line Tools licence'

fi
# /////////////////////////////////////////////////////////////////////



# /////////////////////////////////////////////////////////////////////
# Homebrew
# /////////////////////////////////////////////////////////////////////

# If your machine has /usr/local locked down (like Google's), you can do this to place everything in ~/.homebrew
# mkdir $HOME/.homebrew && curl -L https://github.com/mxcl/homebrew/tarball/master | tar xz --strip 1 -C $HOME/.homebrew
# export PATH=$HOME/.homebrew/bin:$HOME/.homebrew/sbin:$PATH

# Install just required dev items and other items
./brew-cask.sh

# Install additional dev items
# case $additional in
#   y|Y)
#     ./brew-cask+.sh
#   ;;
# esac



# /////////////////////////////////////////////////////////////////////



# /////////////////////////////////////////////////////////////////////
# Install other common things
# /////////////////////////////////////////////////////////////////////
case $additional in
  y|Y)
    # github.com/jamiew/git-friendly
    # the `push` command which copies the github compare URL to my clipboard is heaven
    # bash < <( curl https://raw.github.com/jamiew/git-friendly/master/install.sh)

    # Type `git open` to open the GitHub page or website for a repository.
    npm install -g git-open

    # Trash as the safe `rm` alternative
    npm install --global trash-cli

    # Z
    # github.com/rupa/z
    git clone https://github.com/rupa/z.git ~/code/z
    chmod +x ~/code/z/z.sh
    # Consider reusing your current .z file if possible
    # z is hooked up in .bash_profile

    # For the c alias (syntax highlighted cat)
    sudo easy_install Pygments

    # Change to bash 4 (installed by homebrew)
    BASHPATH=$(brew --prefix)/bin/bash
    sudo echo $BASHPATH >> /etc/shells
    chsh -s $BASHPATH
    echo $BASH_VERSION
    # Later, confirm iterm settings aren't conflicting.
  ;;
esac



# /////////////////////////////////////////////////////////////////////



# /////////////////////////////////////////////////////////////////////
# Remaining config
# /////////////////////////////////////////////////////////////////////

# TODO: Maybe read mathias, paulmillr, gf3, alraa's dotfiles to see what's worth stealing
# prezto and antigen communties also have great stuff
# github.com/sorin-ionescu/prezto/blob/master/modules/utility/init.zsh

# Set up osx defaults
# Might be more: https://github.com/hjuutilainen/dotfiles/blob/master/bin/osx-user-defaults.sh

case $macconfigs in
  y|Y)
    sh .osx
  ;;
esac

# /////////////////////////////////////////////////////////////////////



# /////////////////////////////////////////////////////////////////////
# symlinks to link dotfiles into ~/
# /////////////////////////////////////////////////////////////////////

# Move git credentials into ~/.gitconfig.local
# http://stackoverflow.com/a/13615531/89484
# Now, .gitconfig can be shared across all machines and only the .local changes

./symlink-setup.sh

case $additional in
  n|N)
    rm ~/.gitconfig
  ;;
esac

# /////////////////////////////////////////////////////////////////////
# Completion
echo "\n================================================================\n\nDone! You should restart your computer now.\n\n================================================================";;
say "All done!"
