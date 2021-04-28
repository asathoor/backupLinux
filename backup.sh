#!/bin/bash
# Backup hele systemet

# info
echo Begynder backup | cowsay | lolcat

# path to backup media
buPath = /enterYourPathToBackupMediaHere

# rsync options exclude from to
rsync -aAXH --info=progress2 --delete --exclude={"/dev/*","/proc/*","/sys/*","/tmp/*","/run/*","/mnt/*","/media/*","/lost+found"} / $buPath

# wisdom of the cow
echo Backup færdig | cowsay | lolcat
