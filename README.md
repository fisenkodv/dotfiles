![cover](./images/screenshot.png)

# Dotfiles

[![Actions Status](https://github.com/fisenkodv/dotfiles/workflows/Dotfiles%20Install/badge.svg)](https://github.com/fisenkodv/dotfiles/actions)

**Warning**: Don’t blindly use my settings unless you know what that entails. Use at your own risk!

## Vim setup

Requires Neovim (>= 0.6.1)

- [vim-plug](https://github.com/junegunn/vim-plug) - A minimalist Vim plugin manager
- [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) - A collection of configurations for Neovim's built-in LSP
- [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) - [Treesitter](https://github.com/tree-sitter/tree-sitter) configurations and abstraction layer for Neovim
- [nvim-cmp](https://github.com/hrsh7th/nvim-cmp) - A completion plugin for neovim coded in Lua
- [lspsaga.nvim](https://github.com/tami5/lspsaga.nvim) - A light-weight LSP plugin based on Neovim built-in LSP with highly a performant UI
- [nvim-lsp-installer](https://github.com/williamboman/nvim-lsp-installer) - An LSP server installer
  - It is used for installing an LSP server for Tailwind CSS
- [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) - A highly extendable fuzzy finder over lists
- [defx.nvim](https://github.com/Shougo/defx.nvim) - A file explorer

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
