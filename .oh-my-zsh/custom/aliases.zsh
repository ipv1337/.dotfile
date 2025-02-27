alias zsrc="source ~/.zshrc"
alias zdot="cd ${HOME}/.dotfile && stow . && cd -"

alias c="bat"
alias cat="bat"
alias v="nvim"
alias vi="nvim"

alias lc='clear; l'
alias llc='clear; ll'

#alias switch="darwin-rebuild switch --flake github:ipv1337/nix-darwin#$(scutil --get LocalHostName)"
alias switch="darwin-rebuild switch --flake github:ipv1337/nix-darwin#James-MacBook-Pro"

# Delete all remote tracking Git branches where the upstream branch has been deleted
alias git_prune="git fetch --prune && git branch -vv | grep 'origin/.*: gone]' | awk '{print \$1}' | xargs git branch -d"

# Kubernetes
alias k9s_colima="k9s --all-namespaces --context colima"

# Check duplicate images in current directory
alias dup_images="mac_czkawka_cli image -d . -f results.txt"
