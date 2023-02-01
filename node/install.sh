if test ! "$(uname)" = "Darwin"; then
  printf ""
  exit 0
fi

echo "Installing NPM"

# if ! is-executable brew -o ! is-executable git; then
#   echo "Skipped: npm (missing: brew and/or git)"
#   return
# fi

export DOTFILES_BREW_PREFIX_NVM=$(brew --prefix nvm)
# set-config "DOTFILES_BREW_PREFIX_NVM" "$DOTFILES_BREW_PREFIX_NVM" "$DOTFILES_CACHE"

. "$DOTFILES_ROOT/node/.nvm"

nvm install node && nvm alias default node

# Globally install with npm

packages=(
  get-port-cli
  gtop
  historie
  mdx-deck
  nodemon
  npm
  release-it
  spot
  svgo
  tldr
  underscore-cli
)

npm install -g "${packages[@]}"
