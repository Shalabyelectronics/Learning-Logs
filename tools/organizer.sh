#!/bin/bash
TARGET_DIR="$HOME/storage/downloads"
if [ ! -d "$TARGET_DIR" ]; then
    echo "Directory $TARGET_DIR does not exist."
    exit 1
fi

mkdir -p "$TARGET_DIR/Images"
mkdir -p "$TARGET_DIR/Documents"
mkdir -p "$TARGET_DIR/Videos"
mkdir -p "$TARGET_DIR/Archives"
mkdir -p "$TARGET_DIR/Others"

for file in "$TARGET_DIR"/*; do
    if [ -f "$file" ]; then
        filename=$(basename "$file")
        extension="${filename##*.}"
        extension_lower=$(echo "$extension" | tr '[:upper:]' '[:lower:]')

        case "$extension_lower" in
            jpg|jpeg|png|gif|bmp|webp)
                mv "$file" "$TARGET_DIR/Images/"
                ;;
            pdf|doc|docx|txt|xlsx|ppt|pptx)
                mv "$file" "$TARGET_DIR/Documents/"
                ;;
            mp4|mkv|mov|avi)
                mv "$file" "$TARGET_DIR/Videos/"
                ;;
            zip|rar|7z|tar|gz)
                mv "$file" "$TARGET_DIR/Archives/"
                ;;
            *)
                mv "$file" "$TARGET_DIR/Others/"
                ;;
        esac
    fi
done

echo "Files organized successfully!"


