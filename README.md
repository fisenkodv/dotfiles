# 🏠 Dotfiles

Personal development environment managed by [dfm](https://github.com/fisenkodv/dfm) — standalone, single-binary dotfiles manager. No Python runtime, no git submodule.

## 🚀 Installation

```bash
# Install dfm
curl -fsSL https://raw.githubusercontent.com/fisenkodv/dfm/master/scripts/install.sh | sh

# Clone and apply
git clone https://github.com/fisenkodv/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
dfm apply personal
```

Profiles:

| Profile | Machine |
|---|---|
| `personal` | Personal macOS |

## ⚙️ How it works

`dfm apply personal` processes `profiles/personal.conf.yaml` in order:

1. **link** — symlinks all configs into `~/.config/`
2. **shell** — sets fish as default shell, installs brew packages, mise tools, Claude plugins

Git identity lives in `config/git/config.personal`, symlinked to `~/.config/git/config`.

## 📁 Structure

```
profiles/
  personal.conf.yaml    # personal macOS — links + shell setup

config/
  git/
    config              # shared git config
    config.personal     # personal identity
    ignore
  fish/                 # primary shell
  nvim/
  zed/
  tmux/
  ...

os/macos/brewfile
scripts/
  change-shell.sh
```

## 📄 License

[MIT](LICENSE)
