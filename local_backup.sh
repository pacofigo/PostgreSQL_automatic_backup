#!/bin/bash
#Written by M.E. Francisco Javier Ferreyra López.

#Export env variable
export PGPASSFILE='/home/user/.pgpass'

#Backup Route
backup_route='/route/backup/'

#Get Date
date=$(date +"%d-%b-%Y")

#Backup
pg_dump -U user -h host -F t database_name  --inserts > $backup_route/backupname_$date.tar

#Comprimir el respaldo
gzip -9 $backup_route/backupname_$fecha.tar

#borrar archivo .tar
rm $backup_route/backup_name_$date.tar

