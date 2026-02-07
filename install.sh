#!/usr/bin/env bash
set -euo pipefail

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
BACKUP_DIR="$HOME/.dotfiles-backup"

mkdir -p "$BACKUP_DIR"

link_file() {
  local src="$1"
  local dest="$2"

  mkdir -p "$(dirname "$dest")"

  if [[ -e "$dest" && ! -L "$dest" ]]; then
    mv "$dest" "$BACKUP_DIR/"
  fi

  ln -sfn "$src" "$dest"
}

link_file "$REPO_DIR/zsh/.zshrc" "$HOME/.zshrc"
link_file "$REPO_DIR/git/.gitconfig" "$HOME/.gitconfig"
link_file "$REPO_DIR/wezterm/.wezterm.lua" "$HOME/.config/wezterm/wezterm.lua"
link_file "$REPO_DIR/config/.config/starship.toml" "$HOME/.config/starship.toml"
link_file "$REPO_DIR/config/.config/nvim/init.lua" "$HOME/.config/nvim/init.lua"

echo "Done. Backups (if any) are in $BACKUP_DIR."
