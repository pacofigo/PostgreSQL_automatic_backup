# PostgreSQL_automatic_backup 🐘 🐧
**Generate scheduled backups of a PostgreSQL database locally and sends a copy of the backup to a remote computer.**
<br>
<br>
<br>
## Generate the backup locally
### Preparation of the necessary local files
1. Copy the `.pgpass` file to the home of the user who will run the backups. Remember to put in this file the host, port, database name, username and password of the PostgreSQL user with the necessary permissions to execute the backup.
2. Copy the `local_backup.sh` file to the home of the user. Remember to write correctly the routes that you want your backups to have.
3. Give the execute permission to the file `local_backup.sh` with the following command: `chmod +x local_backup.sh`
### Automatic local backup scheduling
1. Edit the user's cron with the command `crontab -e` 
2. Paste this line in the text editor `0 4 * * * sh /file/path/local_backup.sh`, overriding the path to the `local_backup.sh` file. Save the changes and close the file. The scheduled task will run every day at 4:00 a.m.
3. To ensure that the task was scheduled correctly, run the following command `crontab -l`. You should see the line that we added in the previous step.
## Import the backup from the remote computer
### Copy the generated backup to a remote computer (this must be done on the remote computer)
1. Make sure you have the sshpass package installed.
2. Copy the `import_backup.sh` file to the home of the user who imported the backup. Remember to write correctly the routes that you want your import backups to have.
3. Give the execute permission to the file `import_backup.sh` with the following command: `chmod +x import_backup.sh`
4. Edit the user's cron with the command `crontab -e`
5. Paste this line in the text editor `0 5 * * * sh /file/path/import_backup.sh`, overriding the path to the `import_backup.sh` file. Save the changes and close the file.
6. To ensure that the task was scheduled correctly, run the following command `crontab -l`. You should see the line that we added in the previous step. The scheduled task will run every day at 5:00 a.m.
