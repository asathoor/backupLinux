#!/bin/bash
# Backup hele systemet til eksternt drev
#
# Ubuntu Linux: placeres i mappen backup_ubuntu
# Dokumenter mv: placeres i mappen backup_dokumenter

# path to backup
buPath=/PATH-TO-BACKUP-DRIVE/

# system backup (dvs. / uden /home)
rsync -aAXH --info=progress2 --exclude={"/dev/*","/proc/*","/sys/*","/tmp/*","/run/*","/mnt/*","/media/${buPath}/*","/lost+found","/home/*"} / ${buPath}backup_ubuntu/

# backup fra harddisk med dokumenter (home partitionen)
rsync -aAXH --info=progress2 /mnt/harddisk/ ${buPath}backup_dokumenter/

# test: hvordan er stien formatteret?
# echo ${buPath}backup_dokumenter

# done
echo rsync har kopieret filerne til ${buPath}
