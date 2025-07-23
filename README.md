![cover](./images/screenshot.png)

# Dotfiles

[![Actions Status](https://github.com/fisenkodv/dotfiles/actions/workflows/test_install.yaml/badge.svg)](https://github.com/fisenkodv/dotfiles/actions/workflows/test_install.yaml)

**Warning**: Don’t blindly use my settings unless you know what that entails. Use at your own risk!

## Neovim setup

## ⚡️ Requirements

- Neovim >= **0.9.0** (needs to be built with **LuaJIT**)
- Git >= **2.19.0** (for partial clones support)
- a [Nerd Font](https://www.nerdfonts.com/)(v3.0 or greater) **_(optional, but needed to display some icons)_**
- [lazygit](https://github.com/jesseduffield/lazygit) **_(optional)_**
- a **C** compiler for `nvim-treesitter`. See [here](https://github.com/nvim-treesitter/nvim-treesitter#requirements)
- for [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) **_(optional)_**
  - **live grep**: [ripgrep](https://github.com/BurntSushi/ripgrep)
  - **find files**: [fd](https://github.com/sharkdp/fd)
- a terminal that support true color and _undercurl_:
  - [kitty](https://github.com/kovidgoyal/kitty) **_(Linux & Macos)_**
  - [wezterm](https://github.com/wez/wezterm) **_(Linux, Macos & Windows)_**
  - [alacritty](https://github.com/alacritty/alacritty) **_(Linux, Macos & Windows)_**
  - [iterm2](https://iterm2.com/) **_(Macos)_**

## Shell setup (macOS)

- [Homebrew](https://brew.sh)
- [asdf](https://asdf-vm.com/)

## Installation

```bash
git clone git@github.com:fisenkodv/dotfiles.git .dotfiles
cd .dotfiles
make install
```

## License

[MIT](LICENSE)
