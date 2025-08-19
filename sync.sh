#!/bin/bash

# script directory
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

# Copy entire folder recursively and overwrite if exists
GHOSTTY_SOURCE_FOLDER="$HOME/.config/ghostty"
cp -r "$GHOSTTY_SOURCE_FOLDER" "$SCRIPT_DIR"
echo "Copied $GHOSTTY_SOURCE_FOLDER to $SCRIPT_DIR"

# nvim config
NVIM_SOURCE_FOLDER="$HOME/.config/nvim"
cp -r "$NVIM_SOURCE_FOLDER" "$SCRIPT_DIR"
echo "Copied $NVIM_SOURCE_FOLDER to $SCRIPT_DIR"
