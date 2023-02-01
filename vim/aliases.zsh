nvim_path=$(which nvim)
if (($ + commands[nvim])); then
  alias vim=$nvim_path
  alias vi=$nvim_path
fi
