# dotfiles aliases
alias .f 'cd (path resolve ~/.config/fish/) && cd ../..'
alias .fu '.f && git pull'
alias .fe '.f && n .'
alias .fr='source ~/.config/fish/config.fish; echo "Reloaded"'

# Easier navigation
alias up='cd ..'
alias up2='cd ../..'
alias up3='cd ../../..'
alias up4='cd ../../../..'
alias up5='cd ../../../../..'
alias up6='cd ../../../../../..'
alias up7='cd ../../../../../../..'
alias up8='cd ../../../../../../../..'

# macOS directories
switch (uname)
    case Darwin
        alias dl 'cd ~/Downloads'
        alias dt 'cd ~/Desktop'
        alias p 'cd ~/Projects'
end
