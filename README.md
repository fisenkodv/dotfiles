# 🏠 Dotfiles

Personal macOS development environment configuration files managed by [Dotbot](https://github.com/anishathalye/dotbot).

## 🚀 Installation

Clone this repository into `~/.dotfiles` and run the installer:

```bash
git clone https://github.com/fisenkodv/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
./install
```

This runs Dotbot with `install.conf.yaml` to link the configs into your home directory and run setup tasks.

## ⚙️ How It Works

Dotbot creates symlinks from this repo into your home directory:

- `~/.config/*` -> `config/*`
- `~/.zshrc` -> `config/zsh/zshrc.zsh`

The link behavior and shell tasks live in `install.conf.yaml`. If you do not already have `~/.config`, create it before running the installer.

## 📁 Configuration Overview

Configs live under `config/` and are linked to `~/.config/`:

- 🐚 Shells: `fish/`, `zsh/`, `starship/`
- 🧰 Editors: `nvim/`, `zed/`
- 🖥️ Terminals: `ghostty/`, `kitty/`, `tmux/`, `zellij/`
- 🔧 Dev tools: `git/`, `mise/`, `atuin/`, `yazi/`
- 📊 Monitoring: `htop/`

## 🍺 Homebrew

Dotbot runs `brew bundle install --file=os/macos/brewfile` as part of the install. Add or update that Brewfile for your setup.

## 🤝 Contributing

Contributions, issues, and feature requests are welcome! Feel free to check the [issues page](https://github.com/fisenkodv/dotfiles/issues).

## 📄 License

[MIT](LICENSE)
