export ME="Hi"

## zsh not load nvm on startup
function load_nvm {
  export NVM_DIR="$HOME/.nvm"
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
  [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
}

alias node='unalias nvm; unalias node; unalias npm; load_nvm; node $@'
alias npm='unalias nvm; unalias node; unalias npm; load_nvm; npm $@'
alias nvm='unalias nvm; unalias node; unalias npm; load_nvm; nvm $@'
