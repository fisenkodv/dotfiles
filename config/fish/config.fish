set fish_greeting ""

set -gx TERM xterm-256color

for file in ~/.config/fish/{path,init,aliases,functions}/*.fish
  if test -r $file
    source "$file"
  end
end
