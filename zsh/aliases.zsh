alias reload!='. ~/.zshrc'

alias cls='clear' # Good 'ol Clear Screen command

alias st="stree"

# brew install coreutils
if $(gls &>/dev/null); then
  alias ls="gls -F --color"
  alias l="gls -lAh --color"
  alias ll="gls -l --color"
  alias la='gls -A --color'
fi

if test ! "$(uname)" = "Darwin"; then
  ## Colorize the ls output ##
  alias ls='ls --color=auto'

  ## Use a long listing format ##
  alias ll='ls -la'

  ## Show hidden files ##
  alias l.='ls -d .* --color=auto'
fi
