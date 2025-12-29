if type -q bat
    alias cat bat
end

if type -q eza
    alias ll 'eza --long --header --git --group --icons --time-style long-iso'
    alias la 'll --all'
    alias tr1 'eza --tree --level=1 --icons'
    alias tr2 'eza --tree --level=2 --icons'
    alias tr3 'eza --tree --level=3 --icons'
else
    alias ll 'll -la'
end

if type -q nvim
    alias n nvim
end

if type -q lazygit
    alias lg lazygit
end

alias rsync "rsync --archive --verbose --info=progress2 --human-readable --partial --exclude='._*' --exclude=.Trashes --exclude=.Spotlight-V100"

if type -q just
    alias j just
end
