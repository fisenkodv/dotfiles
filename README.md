# 🏠 Dotfiles

Personal development environment managed by [Dotbot](https://github.com/anishathalye/dotbot). Supports macOS (personal + work) and Debian/Ubuntu.

## 🚀 Installation

```bash
git clone https://github.com/fisenkodv/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
./install <profile>
```

Profiles:

| Profile | Machine |
|---|---|
| `personal` | Personal macOS |
| `work` | Work macOS |
| `linux` | Debian/Ubuntu |

## ⚙️ How it works

`install` runs Dotbot twice — first with the shared `install.conf.yaml`, then with `<profile>.conf.yaml`:

1. **Base** (`install.conf.yaml`) — symlinks all configs, sets fish as default shell, installs Claude plugins
2. **Profile** (e.g. `personal.conf.yaml`) — installs packages, symlinks git identity

Git identity lives in `config/git/config.personal` / `config/git/config.work` / `config/git/config.linux`. The profile YAML symlinks the right one to `~/.config/git/config.local`, which is picked up by the `[include]` in `config/git/config`.

## 📁 Structure

```
install               # entry point: ./install <profile>
install.conf.yaml     # base — links + shell setup (all machines)
profiles/
  personal.conf.yaml  # personal macOS — brew + git identity
  work.conf.yaml      # work macOS — brew + git identity
  linux.conf.yaml     # debian/ubuntu — apt + git identity

config/
  git/
    config            # shared git config
    config.personal   # personal identity
    config.work       # work identity
    config.linux      # linux identity
    config.local      # gitignored, symlinked by profile
  fish/               # primary shell
  nvim/
  zed/
  tmux/
  ...

os/macos/brewfile
scripts/
  change-shell.sh
  install-linux-packages.sh
```

## ⚠️ Migrating from previous setup

If `~/.config/git` is currently a symlink (old setup), unlink it first:

```bash
unlink ~/.config/git
```

Then run `./install <profile>` as normal.

## 📄 License

[MIT](LICENSE)
