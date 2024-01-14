# Ubuntu System BashRC Backup Script

This Bash script automates the backup of the `.bashrc` file and the `crontab` list, and then uploads them to a remote location using RClone. The backups are organized by date and stored in a temporary directory.

## Usage

1. Set the script executable:

   ```bash
   chmod +x my-system-corn-job.sh
   ```

2. Schedule the script to run as a cron job.

## Cron Job Setup

```bash
0 10 * * * /path/to/my-system-corn-job.sh >> /path/to/cron_log.txt 2>&1
```

This will run the script every day at 10 am and append the output and errors to `cron_log.txt`.

## Donations

If you find this script useful and want to show your appreciation, you can donate via [Buy Me a Coffee](https://www.buymeacoffee.com/lalatendu.swain).

## Disclaimer

**Author:** Lalatendu Swain | [GitHub](https://github.com/Lalatenduswain) | [Website](https://blog.lalatendu.info/)

This script is provided as-is and may require modifications or updates based on your specific environment and requirements. Use it at your own risk. The authors of the script are not liable for any damages or issues caused by its usage.

# Author: Lalatendu Swain
