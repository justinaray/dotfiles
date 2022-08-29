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

# Terminal Settings
# Close the terminal window if the shell exits cleanly
defaults write com.apple.Terminal shellExitAction 1

# Finder Settings
defaults write com.apple.finder AppleShowAllFiles YES
defaults write com.apple.finder ShowPathbar 1
defaults write com.apple.finder ShowStatusBar 1

# Press and Hold (Extended Characters Popup)
# Disable Press and Hold in VS Code
defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false
