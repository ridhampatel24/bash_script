#!/bin/bash

#Create a Bash script that automates a task related to system maintenance. For instance, develop a script that regularly backs up specified directory and archives them with a timestamp. Additionally, consider implementing a mechanism to clean up older backups to manage storage space effectively.


source_directory="/home/ridham/Desktop/Task/test_backup"
backup_directory="/home/ridham/Desktop/Task/Backup"

max_backups=5

timestamp=$(date +"%Y%m%d%H%M%S")

backup_archive="$backup_directory/backup_$timestamp.tar.gz"

tar -czf "$backup_archive" "$source_directory"

backup_count=$(ls -1q "$backup_directory" | grep -c "backup_.*\.tar\.gz")

while [ $backup_count -gt $max_backups ]; do
    oldest_backup=$(ls -1 "$backup_directory" | grep "backup_.*\.tar\.gz" | head -n 1)
    rm "$backup_directory/$oldest_backup"
    echo "Deleted old backup: $oldest_backup"
    backup_count=$((backup_count - 1))
done

echo "Backup completed successfully: $backup_archive"





