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


gif() {
    # Based on https://gist.github.com/SheldonWangRJT/8d3f44a35c8d1386a396b9b49b43c385
    output_file="$1.gif"
    ffmpeg -y -i $1 -v quiet -vf scale=iw/2:ih/2 -pix_fmt rgb8 -r 10 $output_file && gifsicle -O3 $output_file -o $output_file
}