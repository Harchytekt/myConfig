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

# Function to simplify installations with mas (source : https://github.com/argon/mas/issues/41#issuecomment-245846651)
function install () {
	# Check if the App is already installed
	mas list | grep -i "$1" > /dev/null

	if [ "$?" == 0 ]; then
		echo "==> $1 is already installed"
	else
		echo "==> Installing $1..."
		mas search "$1" | { read app_ident app_name ; mas install $app_ident ; }
	fi
}

echo 'Installing Cask, to install other apps.'
brew tap caskroom/cask


## Installing the softwares
echo 'Installing Dev tools'
install "Xcode"
sudo xcodebuild -license accept
install "Textastic"
install "Expressions"
brew cask install atom cyberduck github-desktop intellij-idea mamp macdown
brew cask install java julia qlcolorcode qlstephen qlmarkdown provisionql
brew install ant clisp exiftool go libbpg lua mailhog python3
#TODO: ERROR for license
go get -u github.com/nishanths/license
license -update


echo 'Installing utility apps'
brew cask install 1password appcleaner bartender cryptomator duet #beardedspice
brew cask install dropbox
brew install webkit2png
#install "Amphetamine"
install "Better Rename 10"
#install "EyeDrop"
install "Paste – smart clipboard history & snippets manager"
install "Snipposé"
install "StuffIt 16"
install "Wunderlist"


echo "Installing security apps"
brew cask install avast malwarebytes-anti-malware onyx windscribe
install "1Blocker - Block ads, tracking scripts, anything"


echo 'Installing desktop tools'
install "eBookBinder"
install "GoodNotes"
install "Keynote"
install "Notability"
install "Numbers"
install "Pages"
install "Quiver: The Programmer's Notebook"
brew cask install calibre mactex


echo 'Installing communication apps'
install "Wire — Private Messenger"
brew cask install skype


echo 'Installing photos, videos'
brew cask install iina imageoptim
install "Affinity Designer"
install "Drop - Color Picker"
install "Image2icon - Make your own icons"
install "Pixelmator"
install "RulerSwift"
install "Svgsus"


echo 'Installing other apps'
brew cask install 4k-video-downloader spotify #touchbarserver


## ************************* CONFIGURATION ********************************
echo "Configuration of some default parameters"

## FINDER

# Finder : display path access / always display extensions
defaults write com.apple.finder ShowPathbar -bool true
sudo defaults write NSGlobalDomain AppleShowAllExtensions -bool true

## APPS

# Safari : devaloppement tab / show URL (status bar) / Do Not Track
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
