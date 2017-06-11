# copy paste this file in bit by bit.
# don't run it.
echo "do not run this script in one go. hit ctrl-c NOW"
read -n 1

##############################################################################################################
### XCode Command Line Tools
#      thx https://github.com/alrra/dotfiles/blob/ff123ca9b9b/os/os_x/installs/install_xcode.sh

if ! xcode-select --print-path &> /dev/null; then

		# Prompt user to install the XCode Command Line Tools
		xcode-select --install &> /dev/null

		# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

		# Wait until the XCode Command Line Tools are installed
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
###
##############################################################################################################



##############################################################################################################
### homebrew!

# (if your machine has /usr/local locked down (like google's), you can do this to place everything in ~/.homebrew
mkdir $HOME/.homebrew && curl -L https://github.com/mxcl/homebrew/tarball/master | tar xz --strip 1 -C $HOME/.homebrew
export PATH=$HOME/.homebrew/bin:$HOME/.homebrew/sbin:$PATH

# install all the things
./brew.sh
./brew-cask.sh

### end of homebrew
##############################################################################################################




##############################################################################################################
### install of common things
###

# github.com/jamiew/git-friendly
# the `push` command which copies the github compare URL to my clipboard is heaven
# bash < <( curl https://raw.github.com/jamiew/git-friendly/master/install.sh)


# Type `git open` to open the GitHub page or website for a repository.
npm install -g git-open

# trash as the safe `rm` alternative
npm install --global trash-cli


# github.com/rupa/z   - oh how i love you
git clone https://github.com/rupa/z.git ~/code/z
chmod +x ~/code/z/z.sh
# consider reusing your current .z file if possible. it's painful to rebuild :)
# z is hooked up in .bash_profile


# for the c alias (syntax highlighted cat)
sudo easy_install Pygments


# change to bash 4 (installed by homebrew)
BASHPATH=$(brew --prefix)/bin/bash
sudo echo $BASHPATH >> /etc/shells
chsh -s $BASHPATH # will set for current user only.
echo $BASH_VERSION # should be 4.x not the old 3.2.X
# Later, confirm iterm settings aren't conflicting.

# setting up the sublime symlink
ln -sf "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" ~/bin/subl

###
##############################################################################################################



##############################################################################################################
### remaining configuration
###

# go read mathias, paulmillr, gf3, alraa's dotfiles to see what's worth stealing.

# prezto and antigen communties also have great stuff
#   github.com/sorin-ionescu/prezto/blob/master/modules/utility/init.zsh

# set up osx defaults
#   maybe something else in here https://github.com/hjuutilainen/dotfiles/blob/master/bin/osx-user-defaults.sh
sh .osx

# setup and run Rescuetime!

###
##############################################################################################################



##############################################################################################################
### symlinks to link dotfiles into ~/
###

#   move git credentials into ~/.gitconfig.local    	http://stackoverflow.com/a/13615531/89484
#   now .gitconfig can be shared across all machines and only the .local changes

# symlink it up!
./symlink-setup.sh

###
##############################################################################################################
