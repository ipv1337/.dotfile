alias cat="bat"
alias zsrc="source ~/.zshrc"

#alias switch="darwin-rebuild switch --flake github:ipv1337/nix-darwin#$(scutil --get LocalHostName)"
alias switch="darwin-rebuild switch --flake github:ipv1337/nix-darwin#James-MacBook-Pro"

# Delete all remote tracking Git branches where the upstream branch has been deleted
alias git_prune="git fetch --prune && git branch -vv | grep 'origin/.*: gone]' | awk '{print \$1}' | xargs git branch -d"
