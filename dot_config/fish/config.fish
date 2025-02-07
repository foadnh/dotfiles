if status is-interactive
    # Commands to run in interactive sessions can go here
end

# iterm2
test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish

# Nix
if test -e /Users/foadnh/.nix-profile/etc/profile.d/nix.sh
    source /Users/foadnh/.nix-profile/etc/profile.d/nix.sh
end

# Set XDG_CONFIG_HOME
set -gx XDG_CONFIG_HOME ~/.config

# Python path
set -gx PATH /usr/local/opt/python/libexec/bin $PATH

# Go path
set -gx PATH $PATH (go env GOPATH)/bin

# Canva-specific aliases and environment variables
eval (direnv hook fish)

set -gx GOPRIVATE 'github.com/Canva/*,github.com/canva/*'

# Additional Nix configuration
if test -e '/nix/var/nix/profiles/default/etc/profile.d/nix-daemon.fish'
    source '/nix/var/nix/profiles/default/etc/profile.d/nix-daemon.fish'
end

# Node.js paths
set -gx PATH /usr/local/opt/node@14/bin $PATH
set -gx PATH /opt/homebrew/opt/node@18/bin $PATH

# Local bin directory
set -gx PATH /Users/foadnh/.local/bin $PATH

# Replace ls with eza
alias gnuls="/bin/ls"
alias ls="eza"

# fzf key bindings
fzf --fish | source
set -gx FZF_DEFAULT_COMMAND 'fd --type f --strip-cwd-prefix'
set -gx FZF_CTRL_T_COMMAND $FZF_DEFAULT_COMMAND

# zoxide initialization
zoxide init fish | source

# Starship prompt initialization
starship init fish | source

