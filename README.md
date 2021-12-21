# Dotfiles

[![Actions Status](https://github.com/fisenkodv/dotfiles/workflows/Dotfiles%20Install/badge.svg)](https://github.com/fisenkodv/dotfiles/actions)
[![Powered by dotbot][dbshield]][dblink]

[dblink]: https://github.com/anishathalye/dotbot
[dbshield]: https://img.shields.io/badge/powered%20by-dotbot-blue?style=flat

> Personal dotfiles configuration for zsh, git, nvim, and more to rapidly bootstrap a new system.

## Components

- [Dotbot](https://github.com/anishathalye/dotbot) - a tool that bootstraps dotfiles
- zsh Configuration
  - [zgen](https://github.com/tarjoilija/zgen) - plugin manager
  - [Oh My Zsh](https://github.com/robbyrussell/oh-my-zsh) - framework for managing zsh configuration
  - [Powerlevel10k](https://github.com/romkatv/powerlevel10k) - theme
  - [asdf](https://github.com/asdf-vm/asdf) - multiple language runtime version manager
  - [fzf](https://github.com/junegunn/fzf) - command-line fuzzy finder
- [neovim](https://github.com/neovim/neovim) and [vim-plug](https://github.com/junegunn/vim-plug)
- [Makefile](./Makefile)
  - Homebrew save/restore
  - Install macOS defaults

### Installation

```bash
git clone git@github.com:fisenkodv/dotfiles.git .dotfiles --recursive
cd .dotfiles
make install
```

## License

MIT
