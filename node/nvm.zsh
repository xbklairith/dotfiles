export ME="Hi"

## zsh not load nvm on startup
function load_nvm {
  export NVM_DIR="$HOME/.nvm"
  if [ "$(uname -s)" = "Darwin" ]; then
    [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && . "/opt/homebrew/opt/nvm/nvm.sh"                                       # This loads nvm
    [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && . "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" # This loads nvm bash_completion
  else
    [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"                   # This loads nvm
    [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion
  fi
}

alias node='unalias nvm; unalias node; unalias npm; unalias yarn ; unalias npx; node $@'
alias npm='unalias nvm; unalias node; unalias npm; unalias yarn ; unalias npx; npm $@'
alias nvm='unalias nvm; unalias node; unalias npm; unalias yarn ; unalias npx; nvm $@'
alias yarn='unalias nvm; unalias node; unalias npm; unalias yarn ; unalias npx; yarn $@'
alias npx='unalias nvm; unalias node; unalias npm; unalias yarn ; unalias npx; load_nvm; npx $@'
