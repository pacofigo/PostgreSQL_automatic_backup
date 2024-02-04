#!/bin/bash

#Get system date
date=$(date +"%d-%b-%Y")

#Remote path
remote_path="/remote/path"

#Local path
local_path="/local/path"

#Import remote backup
sshpass -p "password" scp -P 22 user_name@domain_name:$remote_path/database_nameBackup_$date.tar.gz $local_path/
