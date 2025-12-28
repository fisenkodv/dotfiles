# 🏠 Dotfiles

Personal macOS development environment configuration files with a lightweight, symlink-based installer.

## 🚀 Installation

Clone this repository into `~/.dotfiles` and run the install target:

```bash
git https://github.com/fisenkodv/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
make install
```

This runs `./.scripts/install.sh` and links the configs into your home directory.

## ⚙️ How It Works

The install script creates symlinks from this repo into your home directory:

- `~/.config/*` -> `.config/*`
- `~/.zshrc` -> `.config/zsh/zshrc.zsh`

The script only creates a link if one doesn't already exist. If you do not already have `~/.config`, create it before running the installer.

## 📁 Configuration Overview

Configs live under `.config/` and are linked to `~/.config/`:

- 🐚 Shells: `fish/`, `zsh/`, `starship/`
- 🧰 Editors: `nvim/`, `zed/`
- 🖥️ Terminals: `ghostty/`, `kitty/`, `tmux/`, `zellij/`
- 🔧 Dev tools: `git/`, `mise/`, `atuin/`, `yazi/`
- 📊 Monitoring: `htop/`

## 🍺 Homebrew

There is a `make brew` target that runs `brew bundle` against `os/macos/brewfile`. Add or update that Brewfile for your setup. The current lockfile lives at `brew/brewfile.lock.json`.

## 🤝 Contributing

Contributions, issues, and feature requests are welcome! Feel free to check the [issues page](https://github.com/fisenkodv/dotfiles/issues).

## 📄 License

[MIT](LICENSE)
