# Backup hele systemet

# info
echo Begynder backup

# path to backup
buPath=/BACKUP_DISK_PATH_HERE

# system backup
rsync -aAXH --info=progress2 --delete --exclude={"/dev/*","/proc/*","/sys/*","/tmp/*","/run/*","/mnt/*","/media/${buPath}/*","/lost+found"} / $buPath

# backup fra harddisk med dokumenter
rsync -aAXH --info=progress2 --delete --exclude={"/dev/*","/proc/*","/sys/*","/tmp/*","/run/*","/media/${buPath}/*","/lost+found"} /mnt/harddisk ${buPath}backup_dokumenter/

#test
echo ${buPath}backup_dokumenter
