# dotfiles aliases
alias .f 'cd (path resolve ~/.config/fish/) && cd ../..'
alias .fu '.f && git submodule update --init --recursive'
alias .fe '.f && vim .'
alias .fr 'source ~/.zshrc; echo ".zshrc reloaded"'
alias .fgen 'zgen reset;source ~/.zshrc'

# Easier navigation
alias '..' 'cd ..'
alias '...' 'cd ../..'
alias '....' 'cd ../../..'
alias '.....' 'cd ../../../..'
alias '.2' 'cd ../..'
alias '.3' 'cd ../../..'
alias '.4' 'cd ../../../..'
alias '.5' 'cd ../../../../..'
# alias '~' 'cd ~/'

# macOS directories
alias 'dl' 'cd ~/Downloads'
alias 'dt' 'cd ~/Desktop'
alias 'p' 'cd ~/Projects'

# Other bash stuff
alias t="touch"

if command -qv bat
  alias cat="bat"
end

if command -qv exa
  alias ll 'exa --long --header --git --group --all --icons'
  alias tr1 'exa --long --header --git --group --all --tree --level=1 --icons'
  alias tr2 'exa --long --header --git --group --all --tree --level=2 --icons'
  alias tr3 'exa --long --header --git --group --all --tree --level=3 --icons'
else
  alias ll 'll -la'
  alias tr1 'tree -L 1 -C'
  alias tr2 'tree -L 2 -C'
  alias tr3 'tree -L 3 -C'
end

alias to_lower="tr '[:upper:]' '[:lower:]'"
alias to_upper="tr '[:lower:]' '[:upper:]'"
