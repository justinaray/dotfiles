# My dotfiles

This repo isn't nearly as fancy as most.  It's mostly just a personal backup and very much a work in progress.  Take what you want, but _*use at your own risk*_

# Preconditions

* Most of the dotfiles assume a macOS environment
* Assumes using oh-my-zsh


# Setup

* Clone the repo to a local directory, e.g. ~/code/personal/oss/dotfiles
* Setup ZSH
  * ln -s ~/code/personal/oss/dotfiles/zsh/general.zsh ~/.oh-my-zsh/custom/general.zsh
  * ln -s ~/code/personal/oss/dotfiles/zsh/macOs.zsh ~/.oh-my-zsh/custom/macOs.zsh
* ln -s ~/code/personal/oss/dotfiles/vim/.vimrc ~/.vimrc
* ln -s ~/code/personal/oss/dotfiles/git/.gitignore_global ~/.gitignore_global
* ln -s ~/code/personal/oss/dotfiles/git/.gitconfig ~/.gitconfig
* Create ~/.gitconfig-personal-oss
	* Use git/.gitconfig-personal-oss as an example
* Create ~/.gitconfig-custom
	* This file can specify a default user, per-directory config, etc. for the local machine/dev environment

# TODO
* brew/taps/cask/install
* oh-my-zsh
* node/nvm
* osx defaults
