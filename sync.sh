#!/bin/bash

# script directory
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

# Copy entire folder recursively and overwrite if exists
SOURCE_FOLDER="$HOME/.config/ghostty"
DEST_FOLDER="$SCRIPT_DIR/ghostty"

cp -r "$SOURCE_FOLDER" "$DEST_FOLDER"
echo "Copied $SOURCE_FOLDER to $DEST_FOLDER"

