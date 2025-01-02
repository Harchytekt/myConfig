#!/bin/sh

## The first : Installing Homebrew
if test ! $(which brew)
then
    echo 'Installing Homebrew'
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

brew update && brew upgrade

## Other installers: Cask et mas (Mac App Store)
echo 'Installing mas tool via Homebrew'
brew install mas
echo "Type your iTunes email :"
read COMPTE
echo "Type your iTunes password : $COMPTE"
read -s PASSWORD
mas signin $COMPTE "$PASSWORD"

# Installing With Homebrew
echo 'Installing with Homebrew'
brew bundle --file=../Configurations/tools/Brewfile

echo 'Accept Xcode license'
sudo xcodebuild -license accept


## Configuration of some macOS parameters
echo "Configuration of some macOS parameters"
macos_config_script="../Configurations/configs/macOS.sh"
. "$macos_config_script"

echo "Last cleanings…"
brew cleanup -s

echo "Installation finished!"
