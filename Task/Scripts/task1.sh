#!/bin/bash

target_directory="/home/ridham/Downloads"

mkdir -pv "$target_directory/images"
mkdir -pv "$target_directory/documents"
mkdir -pv "$target_directory/music"
mkdir -pv "$target_directory/videos"
mkdir -pv "$target_directory/other"

for file in "$target_directory"/*; 
do 
    if [ -f $file ]; then
        case "$(file -b --mime-type "$file")" in
            image/*)
                mv "$file" "$target_directory/images/"
                ;;
            text/*|application/pdf)
                mv "$file" "$target_directory/documents/"
                ;;
            audio/*)
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
