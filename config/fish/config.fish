set fish_greeting ""

set -gx TERM xterm-256color

for file in ~/.config/fish/{functions,exports,aliases}/*.fish
  if test -r $file
    source "$file"
  end
end

# starship
starship init fish | source
