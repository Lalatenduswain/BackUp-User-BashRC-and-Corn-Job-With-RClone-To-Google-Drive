#!/bin/bash

# Check if rclone is installed
if ! command -v rclone &> /dev/null; then
    # Prompt user if they want to install rclone
    read -p "rclone is not installed. Do you want to install it? (y/n): " install_rclone

    if [ "$install_rclone" == "y" ]; then
        # Install rclone
        sudo apt install rclone
        if [ $? -ne 0 ]; then
            echo "Error installing rclone. Please install rclone manually and run the script again."
            exit 1
        fi
    else
        echo "rclone is required for this script. Please install rclone and run the script again."
        exit 1
    fi
fi

# Check rclone version
rclone_version=$(rclone --version)
echo "rclone version: $rclone_version"

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

# Check if rclone configuration file exists
rclone_config="$HOME/.config/rclone/rclone.conf"
if [ ! -f "$rclone_config" ]; then
    echo "rclone configuration file not found. Creating..."
    touch "$rclone_config"
    echo "Please add your Google token to $rclone_config and save it."
fi

# Upload to the remote location using RClone
rclone copy "$backup_dir" bunu:/My-Local-Ubuntu-System-BashRCBackup-Cron

# Clean up temporary backup directory
rm -rf "$backup_dir"
