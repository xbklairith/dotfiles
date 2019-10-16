alias k='kubectl'

alias kcdelpo="kc delete po $*"
alias kcdelpof="kc delete po --force --grace-period 0 $*"
alias kcdelnsf="kubectl delete ns --grace-period=0 --force $*"
alias kcdelns="kubectl delete ns $*"

# kube
alias kc=kubectl
alias kx=kubectx
alias kn=kubens

alias kgetpo="k get po $*"
alias kgp="k get po $*"
alias kdelpo="k delete po $*"
alias kdp="k delete po $*"
alias klo="k logs $*"

alias kscale0="kubectl get statefulsets -o name | xargs -I % kubectl scale % --replicas=0  && kubectl get deployments -o name | xargs -I % kubectl scale % --replicas=0"
alias kscale1="kubectl get statefulsets -o name | xargs -I % kubectl scale % --replicas=1  && kubectl get deployments -o name | xargs -I % kubectl scale % --replicas=1"
alias knuke='kn | grep pdm | while read namespace; do kn "$namespace" && kscale0 ; done' 
