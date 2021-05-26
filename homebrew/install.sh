#!/bin/sh
#
# Homebrew
#
# This installs some of the common dependencies needed (or at least desired)
# using Homebrew.

# Check for Homebrew
if test ! $(which brew)
then
 

  # Install the correct homebrew for each OS type
  if test "$(uname)" = "Darwin"
  then
    echo "  Installing Homebrew for you."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/bird.praphan/.zprofile
    eval "$(/opt/homebrew/bin/brew shellenv)"
    echo "Installing apps via Homebrew"
    cd $DOTFILES_ROOT
    brew bundle || echo "Reinstalling those packages afterward."

  fi

fi

exit 0