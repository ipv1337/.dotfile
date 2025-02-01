# Completion
eval "$(zoxide init --cmd cd zsh)"
eval "$(task --completion zsh)"
eval "$(colima completion zsh)"

# Mise: this sets up interactive sessions - https://mise.jdx.dev/dev-tools/shims.html#how-to-add-mise-shims-to-path
eval "$(mise activate zsh)"
