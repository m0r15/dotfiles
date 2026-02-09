if [ -e ~/.config/fish/aliases.fish ]
    . ~/.config/fish/aliases.fish
end

# Globals {{{
fish_add_path /opt/homebrew/bin
fish_add_path $HOME/.local/bin
fish_add_path $HOME/bin

set -gx EDITOR vim
set -gx VISUAL vim
#}}}

if status is-interactive
    # Commands to run in interactive sessions can go here
end



