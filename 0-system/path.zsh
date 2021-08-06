export PATH="./bin:/usr/local/bin:/usr/local/sbin:$DOTFILES_ROOT/bin:$PATH"
export MANPATH="/usr/local/man:/usr/local/mysql/man:/usr/local/git/man:$MANPATH"

if [ -d "$HOME/.pyenv" ]; then
  ### Take action if $DIR exists ###
  export PYENV_ROOT="$HOME/.pyenv"
  export PATH="$PYENV_ROOT/bin:$PATH"
fi
