set fish_greeting ""

set -gx TERM xterm-256color

for file in ~/.config/fish/{init,functions,exports,aliases}/*.fish
    if test -r $file
        source "$file"
    end
end


# starship init fish | source
