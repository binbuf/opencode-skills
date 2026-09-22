#!/bin/sh

SRC_DIR="src"
DEST_DIR="$HOME/.config/opencode"

if [ ! -d "$SRC_DIR" ]; then
  echo "Error: '$SRC_DIR' directory not found in the current directory."
  exit 1
fi

mkdir -p "$DEST_DIR"

# Generate a list of files to check
FIND_OUTPUT=$(find "$SRC_DIR" -type f)
if [ -z "$FIND_OUTPUT" ]; then
  echo "Warning: '$SRC_DIR' is empty. Nothing to copy."
  exit 0
fi

FLAG_FILE=$(mktemp)

echo "$FIND_OUTPUT" | while IFS= read -r src_file; do
  rel_path=$(echo "$src_file" | sed "s|^$SRC_DIR/||")
  dest_file="$DEST_DIR/$rel_path"
  if [ -e "$dest_file" ]; then
    echo "Error: File already exists: $dest_file"
    echo "1" > "$FLAG_FILE"
  fi
done

if [ -s "$FLAG_FILE" ]; then
  rm -f "$FLAG_FILE"
  echo ""
  echo "Installation aborted."
  echo "To fix this, please remove, rename, or backup the conflicting files in $DEST_DIR, then try again."
  exit 1
fi
rm -f "$FLAG_FILE"

echo "$FIND_OUTPUT" | while IFS= read -r src_file; do
  rel_path=$(echo "$src_file" | sed "s|^$SRC_DIR/||")
  dest_file="$DEST_DIR/$rel_path"
  dest_dir=$(dirname "$dest_file")
  
  # Ensure the destination directory exists
  mkdir -p "$dest_dir"
  
  # Copy the file
  cp "$src_file" "$dest_file"
done

echo "Configuration successfully copied from $SRC_DIR to $DEST_DIR."
