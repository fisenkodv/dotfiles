#!/usr/bin/env bash
set -euo pipefail

sudo apt-get update -qq

# Core tools available in apt
sudo apt-get install -y \
  bat \
  curl \
  duf \
  fd-find \
  fish \
  fzf \
  htop \
  jq \
  mtr-tiny \
  ncdu \
  nmap \
  pwgen \
  ripgrep \
  tmux \
  tree \
  wget

# Neovim - snap for latest stable
if ! command -v nvim &>/dev/null; then
  sudo snap install nvim --classic
fi

# mise - runtime manager
if ! command -v mise &>/dev/null; then
  curl https://mise.run | sh
fi

# eza - modern ls
if ! command -v eza &>/dev/null; then
  sudo apt-get install -y gpg
  wget -qO- https://raw.githubusercontent.com/eza-community/eza/main/deb.asc | sudo gpg --dearmor -o /etc/apt/keyrings/gierens.gpg
  echo "deb [signed-by=/etc/apt/keyrings/gierens.gpg] http://deb.gierens.de stable main" | sudo tee /etc/apt/sources.list.d/gierens.list
  sudo apt-get update -qq && sudo apt-get install -y eza
fi

# zoxide - smart cd
if ! command -v zoxide &>/dev/null; then
  curl -sSfL https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | sh
fi

# starship - prompt
if ! command -v starship &>/dev/null; then
  curl -sS https://starship.rs/install.sh | sh -s -- --yes
fi

# atuin - shell history
if ! command -v atuin &>/dev/null; then
  curl --proto '=https' --tlsv1.2 -LsSf https://setup.atuin.sh | sh
fi

# lazygit
if ! command -v lazygit &>/dev/null; then
  LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep -Po '"tag_name": "v\K[^"]*')
  curl -Lo /tmp/lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/latest/download/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
  tar xf /tmp/lazygit.tar.gz -C /tmp lazygit
  sudo install /tmp/lazygit /usr/local/bin
fi

# yazi - terminal file manager
if ! command -v yazi &>/dev/null; then
  curl --proto '=https' --tlsv1.2 -LsSf https://github.com/sxyazi/yazi/releases/latest/download/yazi-x86_64-unknown-linux-gnu.tar.gz | tar xz -C /tmp
  sudo install /tmp/yazi-x86_64-unknown-linux-gnu/yazi /usr/local/bin
fi
