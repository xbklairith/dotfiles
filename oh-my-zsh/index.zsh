export ZSH=~/.oh-my-zsh


DEFAULT_USER=$(whoami)

plugins=(git docker)

ZSH_THEME="agnoster"
source $ZSH/oh-my-zsh.sh

local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"

RPROMPT='${return_code}'


# source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# alias chrome="/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome"
