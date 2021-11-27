# Dotfiles

[![Actions Status](https://github.com/fisenkodv/dotfiles/workflows/Dotfiles%20Install/badge.svg)](https://github.com/fisenkodv/dotfiles/actions)
[![Powered by dotbot][dbshield]][dblink]

[dblink]: https://github.com/anishathalye/dotbot
[dbshield]: https://img.shields.io/badge/powered%20by-dotbot-blue?style=flat

> Personal dotfiles configuration for Zsh, Git, Vim, and more to rapidly bootstrap a new system.

## Components

- [Dotbot](https://github.com/anishathalye/dotbot) - Installation
- Zsh Configuration
  - [Zgen](https://github.com/tarjoilija/zgen) - Plugin Manager
  - [Oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh) - Zsh config framework
  - [Powerlevel10k](https://github.com/romkatv/powerlevel10k) - Theme
  - [asdf](https://github.com/asdf-vm/asdf) - Multi-language version manager
  - [fzf](https://github.com/junegunn/fzf) - Fuzzy finder
- [Karabiner](https://karabiner-elements.pqrs.org/) - Hyper key + global Vim-like binds
- [Hammerspoon](https://www.hammerspoon.org/) - global application focus binds and window management
- [neovim](https://github.com/neovim/neovim) and [vim-plug](https://github.com/junegunn/vim-plug)
- [Makefile](./Makefile)
  - Homebrew save/restore
  - Install MacOS defaults

### Installation

```bash
git clone git@github.com:fisenkodv/dotfiles.git .dotfiles --recursive
cd .dotfiles
make install
```

## License

MIT
