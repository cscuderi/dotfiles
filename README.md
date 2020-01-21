# Dotfiles

Based off of Paul Irish's dotfiles, these are tweaked for my own personal use. It might be useful for others when setting up a new Mac as well.

You can check his out [here](https://github.com/paulirish/dotfiles).

## Setup

### Installation

1. Clone/download this repo locally (anywhere) and change to that directory
1. Type `./setup-a-new-machine.sh` in Terminal (includes `.osx` and `symlink-setup.sh`), or copy and paste parts of it into Terminal

### Core files and what they do

* `setup-a-new-machine.sh` - XCode, Homebrew, does everything
* `symlink-setup.sh` - Sets up symlinks for all dotfiles and vim config
* `.osx` - Run on a fresh OS X setup
* `brew-cask.sh` - Homebrew initialization
