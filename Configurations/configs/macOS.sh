## ************************* CONFIGURATION ********************************
echo "Configuration of some default parameters"
# See https://macos-defaults.com/

## Dock
defaults write com.apple.dock "orientation" -string "bottom"
&& defaults write com.apple.dock "tilesize" -int "50"
&& defaults write com.apple.dock "autohide" -bool "false"
&& defaults write com.apple.dock "autohide-time-modifier" -float "0.5"
&& defaults write com.apple.dock "autohide-delay" -float "0.2"
&& defaults write com.apple.dock "show-recents" -bool "true"
&& defaults write com.apple.dock "mineffect" -string "genie"
&& defaults write com.apple.dock "static-only" -bool "false"
&& defaults write com.apple.dock "scroll-to-open" -bool "false"

## Screenshots
defaults write com.apple.screencapture "disable-shadow" -bool "false"
&& defaults write com.apple.screencapture "include-date" -bool "true"
&& defaults write com.apple.screencapture "location" -string "~/Desktop"
&& defaults write com.apple.screencapture "show-thumbnail" -bool "true"
&& defaults write com.apple.screencapture "type" -string "png"

## Safari
defaults write com.apple.Safari "ShowFullURLInSmartSearchField" -bool "false"
&& defaults write com.apple.safari "IncludeDevelopMenu" -int "1"
&& defaults write com.apple.safari "ShowOverlayStatusBar" -int "1"

## Finder
defaults write com.apple.finder "QuitMenuItem" -bool "false"
&& defaults write NSGlobalDomain "AppleShowAllExtensions" -bool "true"
&& defaults write com.apple.finder "AppleShowAllFiles" -bool "false"
&& defaults write com.apple.finder "ShowPathbar" -bool "true"
&& defaults write com.apple.finder "FXPreferredViewStyle" -string "icnv"
&& defaults write com.apple.finder "_FXSortFoldersFirst" -bool "true"
&& defaults write com.apple.finder "FinderSpawnTab" -bool "true"
&& defaults write com.apple.finder "FXDefaultSearchScope" -string "SCcf"
&& defaults write com.apple.finder "FXRemoveOldTrashItems" -bool "true"
&& defaults write com.apple.finder "FXEnableExtensionChangeWarning" -bool "true"
&& defaults write NSGlobalDomain "NSDocumentSaveNewDocumentsToCloud" -bool "true"
&& defaults write com.apple.universalaccess "showWindowTitlebarIcons" -bool "false"
&& defaults write NSGlobalDomain "NSToolbarTitleViewRolloverDelay" -float "0.5"
&& defaults write NSGlobalDomain "NSTableViewDefaultSizeMode" -int "2"

## Desktop
defaults write com.apple.finder "_FXSortFoldersFirstOnDesktop" -bool "false"
&& defaults write com.apple.finder "CreateDesktop" -bool "true"
&& defaults write com.apple.finder "ShowHardDrivesOnDesktop" -bool "false"
&& defaults write com.apple.finder "ShowExternalHardDrivesOnDesktop" -bool "true"
&& defaults write com.apple.finder "ShowRemovableMediaOnDesktop" -bool "true"
&& defaults write com.apple.finder "ShowMountedServersOnDesktop" -bool "true"

## Menu Bar
defaults write com.apple.menuextra.clock "FlashDateSeparators" -bool "false"
&& defaults delete com.apple.menuextra.clock "DateFormat"

## Mouse
defaults write NSGlobalDomain com.apple.mouse.linear -bool "false"
&& defaults write NSGlobalDomain com.apple.mouse.scaling -float "1"
&& defaults write com.apple.Terminal "FocusFollowsMouse" -bool "false"

## Trackpad
defaults write com.apple.AppleMultitouchTrackpad "FirstClickThreshold" -int "1"
&& defaults write com.apple.AppleMultitouchTrackpad "DragLock" -bool "false"
&& defaults write com.apple.AppleMultitouchTrackpad "Dragging" -bool "false"
&& defaults write com.apple.AppleMultitouchTrackpad "TrackpadThreeFingerDrag" -bool "true"

## Keyboard
defaults write NSGlobalDomain "ApplePressAndHoldEnabled" -bool "true"
&& defaults write com.apple.HIToolbox "AppleFnUsageType" -int "0"
&& defaults write NSGlobalDomain com.apple.keyboard.fnState -bool "false"
&& defaults write NSGlobalDomain AppleKeyboardUIMode -int "2"

## Mission Control (Mission Control Plus is also installed)
defaults write com.apple.dock "mru-spaces" -bool "true"
&& defaults write com.apple.dock "expose-group-apps" -bool "true"
&& defaults write NSGlobalDomain "AppleSpacesSwitchOnActivate" -bool "false"
&& defaults write com.apple.spaces "spans-displays" -bool "false"

## Feedback Assistant
defaults write com.apple.appleseed.FeedbackAssistant "Autogather" -bool "true"

## Xcode
defaults delete com.apple.dt.Xcode "IDEAdditionalCounterpartSuffixes"
&& defaults write com.apple.dt.Xcode "ShowBuildOperationDuration" -bool "false"

## Simulator
defaults write com.apple.iphonesimulator "ScreenShotSaveLocation" -string "~/Pictures/Screenshots"

## TextEdit
defaults write com.apple.TextEdit "RichText" -bool "true"
&& defaults write com.apple.TextEdit "SmartQuotes" -bool "true"

## Time Machine
defaults write com.apple.TimeMachine "DoNotOfferNewDisksForBackup" -bool "true"

## Activity Monitor
defaults write com.apple.ActivityMonitor "UpdatePeriod" -int "5"
&& defaults write com.apple.ActivityMonitor "IconType" -int "0"

## Message
defaults write com.apple.MobileSMS "MMSShowSubject" -bool "false"

## Miscellaneous
defaults write com.apple.helpviewer "DevMode" -bool "false"
&& defaults write com.apple.dock "enable-spring-load-actions-on-all-items" -bool "false"
&& defaults write com.apple.Music "userWantsPlaybackNotifications" -bool "true"
&& defaults write NSGlobalDomain "NSCloseAlwaysConfirmsChanges" -bool "true"
&& defaults write NSGlobalDomain "NSQuitAlwaysKeepsWindow" -bool "true"


## ************ End of the installation *********
echo "Reload the apps after configuration…"
killall Finder
&& killall Dock
&& killall Safari
&& killall SystemUIServer
&& killall Xcode
&& killall TextEdit
&& killall Activity\ Monitor
&& killall Messages
&& killall Music
&& killall Terminal

echo "You might want to restart after the script is finished…"
