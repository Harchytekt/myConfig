#!/bin/sh

## The first : Installing Homebrew
if test ! $(which brew)
then
    echo 'Installing Homebrew'
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew update

## Other installers: Cask et mas (Mac App Store)
echo 'Installing mas, to use the Mac App Store from the CLI.'
brew install mas
echo "Type your iTunes email :"
read COMPTE
echo "Type your iTunes password : $COMPTE"
read -s PASSWORD
mas signin $COMPTE "$PASSWORD"

# Installing With Homebrew
echo 'Installing with Homebrew'
brew install aria2 exiftool git git-lfs go
echo 'Install license with go'
go get -u github.com/nishanths/license && license -update
brew install jenv java lua mycli mysql node npm pandoc


# Installing with mas
echo 'Installing Mac App Store apps with mas'
# 1Blocker
mas install 1107421413
# Affinity Designer
mas install 824171161
# Amphetamine
mas install 937984704
# Aquarelo
mas install 1263012549
# Bear
mas install 1091189122
# Better Rename 10
mas install 1063663640
# Cascadea
mas install 1432182561
# Compare Folders
mas install 816042486
# Drop - Color Picker
mas install 1173932628
# eBookBinder
mas install 515964474
# Encrypto: Secure Your Files
mas install 935235287
# Expressions
mas install 913158085
# Gladys
mas install 1382386877
# GoodNotes 5
mas install 1480793815
# iA Writer
mas install 775737590
# Image2Icon - Make your icons
mas install 992115977
# Keynote
mas install 409183694
# Numbers
mas install 409203825
# Pages
mas install 409201541
# JSON Viewer for Safari
mas install 1438520258
# Kaleidoscope (download it from website after)
mas install 587512244
# Keka
mas install 470158793
# MacFamilyTree 9
mas install 1458866808
# Notability
mas install 736189492
# NordVPN IKE - Unlimited VPN
mas install 1116599239
# Paste - Clipboard Manager
mas install 967805235
# Pixelmator
mas install 407963104
# Pixelmator Pro
mas install 1289583905
# StuffIt 16
mas install 919265760
# Textastic
mas install 572491815
# Twitter for Mac
mas install 1482454543
# Xcode
mas install 497799835
sudo xcodebuild -license accept


# Installing with cask
echo 'Installing apps with cask'
brew cask install 1password appcleaner atom bartender brave-browser
brew cask install calibre cleanmymac cryptomator cyberduck
brew cask install emojipedia github handbrake iina imageoptim
brew cask install intellij-idea-ce julia knockknock lulu
brew cask install macdown malwarebytes protonmail-bridge ransomwhere
brew cask install sequel-pro steam texpad
brew cask install qlmarkdown qlstephen


# Installing with npm
echo 'Installing with npm'
npm install -g sass


## ************************* CONFIGURATION ********************************
echo "Configuration of some default parameters"

## FINDER

# Finder : display path access / always display extensions
defaults write com.apple.finder ShowPathbar -bool true
sudo defaults write NSGlobalDomain AppleShowAllExtensions -bool true

## APPS

# Safari : developpement tab / show URL (status bar) / Do Not Track
defaults write com.apple.safari IncludeDevelopMenu -int 1
defaults write com.apple.safari ShowOverlayStatusBar -int 1
defaults write com.apple.safari SendDoNotTrackHTTPHeader -int 1

## ************ End of the installation *********
echo "Reload the Finder…"
killall Finder

echo "Last cleanings…"
brew cleanup
rm -f -r /Library/Caches/Homebrew/*

echo "Installation finished !"
