#!/bin/bash


target_directory="/path/to/target/directory"

mkdir -p "$target_directory/images"
mkdir -p "$target_directory/documents"
mkdir -p "$target_directory/music"
mkdir -p "$target_directory/videos"
mkdir -p "$target_directory/other"

for file in "$target_directory"/*; 
do
    if [ -f "$file" ]; then
        case "$(file -b --mime-type "$file")" in
            image/*)
                mv "$file" "$target_directory/images/"
                ;;
            text/*|application/pdf)
                mv "$file" "$target_directory/documents/"
                ;;
            audio/*|video/*)
                mv "$file" "$target_directory/music/"
                ;;
            video/*)
                mv "$file" "$target_directory/videos/"
                ;;
            *)
                mv "$file" "$target_directory/other/"
                ;;
        esac
    fi
done

echo "Files organized successfully!"

