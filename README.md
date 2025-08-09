![cover](./images/screenshot.png)

# Dotfiles

[![Actions Status](https://github.com/fisenkodv/dotfiles/actions/workflows/test_install.yaml/badge.svg)](https://github.com/fisenkodv/dotfiles/actions/workflows/test_install.yaml)

**Warning**: Don't blindly use my settings unless you know what that entails. Use at your own risk!

Personal macOS development environment configuration files. This repository contains my carefully crafted dotfiles for a productive development workflow.

## 🚀 What's Included

### 📝 Editors & IDEs

- **[Neovim](https://neovim.io/)** - Modern Vim-based editor powered by [LazyVim](https://lazyvim.github.io/)
- **[Zed](https://zed.dev/)** - High-performance code editor with custom settings and themes

### 🐚 Shell & Terminal

- **[Fish Shell](https://fishshell.com/)** - Friendly interactive shell with custom functions and aliases
- **[Zsh](https://www.zsh.org/)** - Alternative shell configuration
- **[Starship](https://starship.rs/)** - Cross-shell prompt with custom styling
- **[Tmux](https://github.com/tmux/tmux)** - Terminal multiplexer with custom key bindings and themes
- **[Zellij](https://zellij.dev/)** - Modern terminal workspace manager
- **[Ghostty](https://ghostty.org/)** - Fast GPU-accelerated terminal emulator

### 🛠️ Development Tools

- **[Mise](https://mise.jdx.dev/)** - Runtime version manager (successor to asdf)
- **[Atuin](https://atuin.sh/)** - Magical shell history with sync and search
- **[Yazi](https://yazi-rs.github.io/)** - Blazing fast terminal file manager

### 📊 System Monitoring

- **[htop](https://htop.dev/)** - Interactive process viewer with custom configuration

## ⚡️ Requirements

### Neovim Setup

- Neovim >= **0.9.0** (needs to be built with **LuaJIT**)
- Git >= **2.19.0** (for partial clones support)
- A [Nerd Font](https://www.nerdfonts.com/) (v3.0 or greater) **_(required for icons)_**

### Terminal Requirements

A terminal that supports true color and _undercurl_:

- [ghostty](https://ghostty.org/) **_(macOS, Linux & Windows)_** - Recommended
- [kitty](https://github.com/kovidgoyal/kitty) **_(Linux & macOS)_**
- [wezterm](https://github.com/wez/wezterm) **_(Linux, macOS & Windows)_**
- [alacritty](https://github.com/alacritty/alacritty) **_(Linux, macOS & Windows)_**
- [iterm2](https://iterm2.com/) **_(macOS)_**

### System Requirements (macOS)

- [Homebrew](https://brew.sh) - Package manager
- [Fish Shell](https://fishshell.com/) or [Zsh](https://www.zsh.org/)
- [Mise](https://mise.jdx.dev/) - Runtime version manager

## 📦 Installation

```bash
git clone git@github.com:fisenkodv/dotfiles.git .dotfiles
cd .dotfiles
make install
```

The installation process will:

1. Install Homebrew packages defined in `brew/`
2. Set up shell configurations (Fish/Zsh)
3. Configure all applications in `.config/`

## 🗂️ Directory Structure

```
.config/
├── atuin/          # Shell history configuration
├── fish/           # Fish shell configuration
├── ghostty/        # Ghostty terminal configuration
├── htop/           # Process viewer configuration
├── mise/           # Runtime version manager
├── nvim/           # LazyVim configuration with extras
├── starship/       # Cross-shell prompt configuration
├── tmux/           # Terminal multiplexer configuration
├── yazi/           # File manager configuration
├── zed/            # Zed editor configuration
├── zellij/         # Terminal workspace manager
└── zsh/            # Zsh shell configuration
```

## 📝 Customization

Each tool's configuration can be found in its respective `.config/` directory. Feel free to modify settings to match your preferences.

## 🤝 Contributing

Contributions, issues, and feature requests are welcome! Feel free to check the [issues page](https://github.com/fisenkodv/dotfiles/issues).

## 📄 License

[MIT](LICENSE)
