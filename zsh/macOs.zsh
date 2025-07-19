# ln $TMPDIR to home for easy access
if [ ! -e "$HOME/tmp" ]; then
  # No file in ~/tmp, link it
  ln -s "$TMPDIR" "$HOME/tmp"
elif [ -L "$HOME/tmp" ] && [ -d "$HOME/tmp" ]; then
  lnValue=$(readlink "$HOME/tmp")
  if [[ "$lnValue" == /var/folders/* ]]; then
    # existing link to tmp dir, reset/update link
    ln -s -F -f -h "$TMPDIR" "$HOME/tmp"
  fi
fi

# https://macos-defaults.com/ is a great resource for discovering defaults settings

# Terminal Settings
# Close the terminal window if the shell exits cleanly
defaults write com.apple.Terminal shellExitAction 1

# Finder Settings
defaults write NSGlobalDomain "AppleShowAllExtensions" -bool "true"
defaults write com.apple.finder "AppleShowAllFiles" -bool "true"
defaults write com.apple.finder "_FXSortFoldersFirst" -bool "true"
defaults write com.apple.finder "ShowPathbar" -bool "true"
defaults write com.apple.finder "ShowStatusBar" -bool "true"
# Use list view in all Finder windows by default
# Four-letter codes for the other view modes: `icnv`, `clmv`, `glyv`
defaults write com.apple.finder "FXPreferredViewStyle" -string "Nlsv"
# Kill all finder instances to reset
killall Finder

# Input Devices

##### Keyboard

# Mac Globe key opens emoji picker
defaults write com.apple.HIToolbox AppleFnUsageType -int "2"

# Press and Hold (Extended Characters Popup)
# Disable Press and Hold in VS Code
defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false

# Use tab (shift-tab) to navigate UI Focus
defaults write NSGlobalDomain AppleKeyboardUIMode -int "2"

# TextEdit
# Set default format to txt
defaults write com.apple.TextEdit "RichText" -bool "false"
killall TextEdit
