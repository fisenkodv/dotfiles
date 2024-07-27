#!/bin/bash

set -e

SOURCE_CONFIG_DIR="$PWD/config"
SOURCE_MODULES_DIR="$PWD/modules"
TARGET_CONFIG_DIR="$HOME/.config"

link_config() {
  local source=$1
  local target=$2

  echo "Checking '${source}'..."
  if [ ! -L ${target} ]; then
    echo "=> Linking '${source}' to '${target}'..."
    ln -s ${source} ${target}
  fi
}

# shell prompt for zsh, fish
link_config $SOURCE_CONFIG_DIR/starship/starship.toml $TARGET_CONFIG_DIR/starship.toml

# zsh
link_config $SOURCE_MODULES_DIR/zgen $HOME/.zgen
link_config $SOURCE_CONFIG_DIR/zsh/zshrc.zsh $HOME/.zshrc
link_config $SOURCE_CONFIG_DIR/zsh $TARGET_CONFIG_DIR/zsh

# fish
link_config $SOURCE_CONFIG_DIR/fish $TARGET_CONFIG_DIR/fish

# nvim
link_config $SOURCE_CONFIG_DIR/nvim $TARGET_CONFIG_DIR/nvim

# tools
link_config $SOURCE_CONFIG_DIR/htop $TARGET_CONFIG_DIR/htop
link_config $SOURCE_CONFIG_DIR/tmux $TARGET_CONFIG_DIR/tmux
link_config $SOURCE_CONFIG_DIR/iterm2 $TARGET_CONFIG_DIR/iterm2
link_config $SOURCE_CONFIG_DIR/wezterm $TARGET_CONFIG_DIR/wezterm
link_config $SOURCE_CONFIG_DIR/zed $TARGET_CONFIG_DIR/zed
link_config $SOURCE_CONFIG_DIR/helix $TARGET_CONFIG_DIR/helix
link_config $SOURCE_CONFIG_DIR/yazi $TARGET_CONFIG_DIR/yazi
