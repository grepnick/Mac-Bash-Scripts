#!/bin/bash

# Apple has some dumba$$ brain dead defaults so I use this script to setup all of my preferred settings.

# Always Show File Extensions
defaults write -g AppleShowAllExtensions -bool true

# Show path bar in finder
defaults write com.apple.finder ShowPathbar -bool true

# Show the status bar in finder
defaults write com.apple.finder ShowStatusBar -bool true

# Always search in current folder
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

# Always expand print and save dialogues
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode2 -bool true
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint -bool true
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint2 -bool true

# Speed up keyboard repeat
defaults write -g KeyRepeat -int 0.5
defaults write -g InitialKeyRepeat -int 10

# Always show scrollbars
defaults write -g AppleShowScrollBars -string "Always"

# Disable the unnatural "natural" scrolling
defaults write -g AppleShowScrollBars -string "Always"

# Disable prompt to reopen windows after rebooting
defaults write com.apple.loginwindow TALLogoutSavesState -bool false
defaults write com.apple.loginwindow LoginwindowLaunchesRelaunchApps -bool false
