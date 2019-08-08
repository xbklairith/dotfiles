alias k='kubectl'

alias kcdelpo="kc delete po $*"
alias kcdelpof="kc delete po --force --grace-period 0 $*"
alias kcdelnsf="kubectl delete ns --grace-period=0 --force $*"
alias kcdelns="kubectl delete ns $*"

# kube
alias kc=kubectl
alias kx=kubectx
alias kn=kubens
