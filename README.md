# Dotfiles

Based off of Paul Irish's dotfiles, these are tweaked for my own use.

You can check his out [here](https://github.com/paulirish/dotfiles).

## Syntax highlighting for these files

Install [Dotfiles Syntax Highlighting](https://github.com/mattbanks/dotfiles-syntax-highlighting-st2) in Sublime via [Package Control](http://wbond.net/sublime_packages/package_control)

## Setup

### Installation

* Clone/download this repo locally (anywhere)
* Run parts of `setup-a-new-machine.sh`
* Run `symlink-setup.sh`
  * git config needs attention, read the notes.

## Moving around in folders (`z`, `...`, `cdf`)

`z` helps you jump around to whatever folder. It uses actual real magic to determine where you should jump to. Seperately there's some `...` aliases to shorten `cd ../..` and `..`, `....` etc. Then, if you have a folder open in Finder, `cdf` will bring you to it.
```sh
z dotfiles
z blog
....      # drop back equivalent to cd ../../..
z public
cdf       # cd to whatever's up in Finder
```
`z` learns only once its installed so you'll have to cd around for a bit to get it taught.
Lastly, I use `open .` to open Finder from this path. (That's just available normally.)

## Overview of files

###  Automatic config

* `.sift.conf` - sift (faster than grep, ack, ag)
* `.vimrc`, `.vim` - vim config
* `.inputrc` - behavior of the actual prompt line

### Shell environment

* `.aliases`
* `.bash_profile`
* `.bash_prompt`
* `.bashrc`
* `.exports`
* `.functions`

### Manually run

* `setup-a-new-machine.sh` - XCode, Homebrew, other useful things
* `symlink-setup.sh`  - Sets up symlinks for all dotfiles and vim config
* `.osx` - Run on a fresh OS X setup
* `brew.sh` & `brew-cask.sh` - Homebrew initialization

### `~/bin`

One-off binaries that aren't via an npm global or homebrew. [git open](https://github.com/paulirish/git-open), [wifi-password](https://github.com/rauchg/wifi-password), [coloredlogcat](https://developer.sinnerschrader-mobile.com/colored-logcat-reloaded/507/), [git-overwritten](https://github.com/mislav/dotfiles/blob/master/bin/git-overwritten), and `subl` for Sublime Text.


