#! /bin/sh

# install homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# install cask
brew install cask

# install gui app
brew cask install docker
brew cask install firefox
brew cask install visual-studio-code
brew cask install dash
brew cask install iina

# install app

## lang
brew install node
brew install go

### rust
### - using rustup, because brew only manage one version of rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
source $HOME/.cargo/env

## package arrangement
brew install tig
brew install yarn

## database
brew install postgres
brew install redis
brew install mysql

## downloader
brew install annie
brew install youtube-dl

## compile
brew install cmake


## lib
brew install ncurses

# toolset
brew install tree
brew install tldr
cargo install tokei
cargo install lsd

# font

## cascadia
## - mono(fix-width) for char-img
## - pl for powerline
curl https://github.com/microsoft/cascadia-code/releases/download/v1911.21/CascadiaMonoPL.ttf -O
CascadiaMonoPL.ttf


