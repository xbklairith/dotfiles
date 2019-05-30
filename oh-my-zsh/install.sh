
export ZSH=~/.oh-my-zsh

if [ ! -d $ZSH ]; then
  git clone git://github.com/robbyrussell/oh-my-zsh.git $ZSH
fi

# export ZSH="$HOME/.oh-my-zsh/"; sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
