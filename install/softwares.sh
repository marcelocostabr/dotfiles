#!/bin/sh

source colors.sh

#  Brew Cask ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
msg_install "Installing apps with brew cask"
brew cask

cask=(
  "google-chrome"
  "microsoft-edge"
  "iterm2"
  "visual-studio-code"
  "sublime-text"
  "transmission"
  "dropbox"
  "spotify"
  "docker"
  "franz"
  "istat-menus"
  "doxie"
  "figma"
  "github"
  "lastpass"
  "onyx"
  "sequel-pro"
  "pocket-casts"
  "vlc"
  "colour-contrast-analyser"
)

for app in "${cask[@]}"; do
  msg_install "Installing $app"
  brew cask install $app
  msg_ok "$app"
done
