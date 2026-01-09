# Export PATH
fish_add_path /opt/homebrew/bin
fish_add_path $HOME/.local/bin

set -gx EDITOR vim
set -gx VISUAL vim

if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Aliases
abbr --add D docker
abbr --add DR docker run
