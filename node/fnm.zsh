# fnm: fast node version manager. Default version is set with `fnm default <version>`;
# --use-on-cd switches versions on cd when a .nvmrc / .node-version file is found.
if (( $+commands[fnm] )); then
  eval "$(fnm env --use-on-cd --shell zsh)"
fi
