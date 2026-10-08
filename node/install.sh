if test ! "$(uname)" = "Darwin"; then
  printf ""
  exit 0
fi

echo "Installing Node via fnm"

if ! command -v fnm >/dev/null; then
  echo "Skipped: node (missing: fnm, run brew bundle)"
  exit 0
fi

eval "$(fnm env --shell bash)"

fnm install --lts && fnm default lts-latest

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
