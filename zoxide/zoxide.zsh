# zoxide - smarter cd command
# https://github.com/ajeetdsouza/zoxide
#
# Usage:
#   z <query>      - Jump to best match for "query"
#   z foo bar      - Jump to directory matching both "foo" AND "bar"
#   zi             - Interactive fzf selection of all tracked dirs
#   zi <query>     - Interactive selection filtered by "query"

if (( $+commands[zoxide] )); then
  eval "$(zoxide init zsh)"
fi
