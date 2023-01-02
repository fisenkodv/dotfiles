![cover](./images/screenshot.png)

# Dotfiles

[![Actions Status](https://github.com/fisenkodv/dotfiles/workflows/Dotfiles%20Install/badge.svg)](https://github.com/fisenkodv/dotfiles/actions)

**Warning**: Don’t blindly use my settings unless you know what that entails. Use at your own risk!

## Vim setup

Requires [Neovim](https://neovim.io/) (>= 0.8)

- [NvChad](https://github.com/NvChad/NvChad) - Blazing fast Neovim config providing solid defaults and a beautiful UI

## Shell setup (macOS)

- [Dotbot](https://github.com/anishathalye/dotbot) - a tool that bootstraps dotfiles
- [zgen](https://github.com/tarjoilija/zgen) - plugin manager
- [Oh My Zsh](https://github.com/robbyrussell/oh-my-zsh) - framework for managing `zsh` configuration
- [Powerlevel10k](https://github.com/romkatv/powerlevel10k) - theme
- [asdf](https://github.com/asdf-vm/asdf) - multiple language runtime version manager
- [fzf](https://github.com/junegunn/fzf) - command-line fuzzy finder
- [Meslo Nerd Font](https://github.com/romkatv/powerlevel10k#meslo-nerd-font-patched-for-powerlevel10k) - Meslo Nerd Font patched for Powerlevel10k
- [Exa](https://the.exa.website/) - `ls` replacement
- [fzf](https://github.com/junegunn/fzf) - a general-purpose command-line fuzzy finder
- [peco](https://github.com/peco/peco) - interactive filtering

### Installation

```bash
git clone git@github.com:fisenkodv/dotfiles.git .dotfiles --recursive
cd .dotfiles
make install
```

### Inspired By
- https://github.com/denolfe/dotfiles
- https://github.com/craftzdog/dotfiles-public

## License

MIT
