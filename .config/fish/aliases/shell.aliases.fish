# dotfiles aliases
alias .f 'cd (path resolve ~/.config/fish/) && cd ../..'
alias .fu '.f && git pull'
alias .fe '.f && v .'
alias .fr='source ~/.config/fish/config.fish; echo "Reloaded"'

# Easier navigation
alias '..' 'cd ..'
alias '...' 'cd ../..'
alias '....' 'cd ../../..'
alias '.....' 'cd ../../../..'

# macOS directories
switch (uname)
  case Darwin
    alias dl 'cd ~/Downloads'
    alias dt 'cd ~/Desktop'
    alias p 'cd ~/Projects'
end

if type -q bat
    alias cat bat
end

if type -q eza
    alias ll 'eza --long --header --git --group --all --icons'
    alias tr1 'eza --long --header --git --group --all --tree --level=1 --icons'
    alias tr2 'eza --long --header --git --group --all --tree --level=2 --icons'
    alias tr3 'eza --long --header --git --group --all --tree --level=3 --icons'
else
    alias ll 'll -la'
end

command -qv nvim && alias v nvim
