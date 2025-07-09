alias k='kubectl'
alias kg='kubectl get'
alias ka='kubectl apply'
alias ke='kubectl edit'
alias kgp='kubectl get pods'
alias kgpw='kubectl get pods -w'
alias kgpa='kubectl get pods --all-namespaces'
alias kl='kubectl logs'
alias klf='kubectl logs -f'
alias kd='kubectl describe'
alias kdp='kubectl describe pod'
alias krm='kubectl delete pod'
alias kex='kubectl exec -it'
alias kgev='kubectl get events --sort-by=".metadata.creationTimestamp"'
alias ktop='watch -n 1 kubectl top pod --sort-by=cpu'

krma() { kubectl get pods | grep "$1" | awk '{print $1}' | xargs kubectl delete pod; }
krmaf() { kubectl get pods | grep "$1" | awk '{print $1}' | xargs kubectl delete pod --grace-period 0 --force; }

export drc="--dry-run=client"
export drs="--dry-run=server"
