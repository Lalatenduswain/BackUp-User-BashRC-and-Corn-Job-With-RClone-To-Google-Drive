# Ubuntu System BashRC Backup Script

This Bash script automates the backup of the `.bashrc` file and the `crontab` list, and then uploads them to a remote location using RClone. The backups are organized by date and stored in a temporary directory.

## Usage

1. Set the script executable:

   ```bash
   git clone https://github.com/Lalatenduswain/BackUp-User-BashRC-and-Corn-Job-With-RClone-To-Google-Drive.git
   cd BackUp-User-BashRC-and-Corn-Job-With-RClone-To-Google-Drive
   chmod +x my-system-corn-job.sh
   ./my-system-corn-job.sh
   ```

2. Schedule the script to run as a cron job.

## Cron Job Setup

```bash
0 10 * * * /path/to/my-system-corn-job.sh >> /path/to/cron_log.txt 2>&1
```

This will run the script every day at 10 am and append the output and errors to `cron_log.txt`.

## Description

This Bash script is designed to perform the following tasks:

1. Backup the `.bashrc` file with a timestamp.
2. Backup the user's crontab to a text file.
3. Display the contents of the backup directory.
4. Upload the backups to a remote location using RClone.
5. Clean up the temporary backup directory.

## Usage

### Prerequisites

- [RClone](https://rclone.org/) must be installed and configured.
- Ensure that you have the necessary permissions to execute the script.

### Running the Script

## Donations

If you find this script useful and want to show your appreciation, you can donate via [Buy Me a Coffee](https://www.buymeacoffee.com/lalatendu.swain).

## Disclaimer

**Author:** Lalatendu Swain | [GitHub](https://github.com/Lalatenduswain) | [Website](https://blog.lalatendu.info/)

This script is provided as-is and may require modifications or updates based on your specific environment and requirements. Use it at your own risk. The authors of the script are not liable for any damages or issues caused by its usage.

# Author: Lalatendu Swain
