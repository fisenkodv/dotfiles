# dotfiles aliases
alias .f 'cd (path resolve ~/.config/fish/) && cd ../..'
alias .fu '.f && git submodule update --init --recursive'
alias .fe '.f && v .'

# Easier navigation
alias '..' 'cd ..'
alias '...' 'cd ../..'
alias '....' 'cd ../../..'
alias '.....' 'cd ../../../..'

# macOS directories
alias dl 'cd ~/Downloads'
alias dt 'cd ~/Desktop'
alias p 'cd ~/Projects'

# Other bash stuff
alias t touch

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
    alias tr1 'tree -L 1 -C'
    alias tr2 'tree -L 2 -C'
    alias tr3 'tree -L 3 -C'
end
