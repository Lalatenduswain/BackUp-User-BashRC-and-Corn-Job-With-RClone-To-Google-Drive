#!/bin/bash

# Set the date format
date_format=$(date +"%d-%m-%Y_%H-%M-%S")
backup_dir="/tmp/bashrc_backup"

# Ensure the backup directory exists
mkdir -p "$backup_dir"

# Backup .bashrc
cp ~/.bashrc "$backup_dir/Bashrc_$date_format.bak"

# Backup crontab
crontab -l > "$backup_dir/crontab_backup.txt"

# Display the contents of the backup directory
ls -l "$backup_dir"

# Upload to the remote location using RClone
rclone copy "$backup_dir" bunu:/My-Local-Ubuntu-System-BashRCBackup-Cron

# Clean up temporary backup directory
rm -rf "$backup_dir"
