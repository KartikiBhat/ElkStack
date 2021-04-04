#!/bin/bash
tar -zcf /var/backups/home.tar /home
mv /var/backups/home.tar /var/backups/home.$(date -I).tar
ls -lah /var/backups >> /var/backups/file_report.txt
free -h >> /var/backups/disk_report.txt
