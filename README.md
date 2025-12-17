# Automated Backup & Log Rotation Script

## Description
This Bash script automates daily backups of important directories on Ubuntu. 
It compresses files, maintains logs locally, and deletes old backups automatically. 
This setup is ideal for DevOps engineers to manage server backups efficiently.

## Features
- Automated directory backup
- Date-based compressed files
- Local log file generation
- Auto cleanup of backups older than 7 days
- Cron job scheduling for automation

## Technologies Used
- Bash / Shell Scripting
- Linux (Ubuntu)
- Cron Jobs

## How to Run
```bash
chmod +x backup.sh
./backup.sh
