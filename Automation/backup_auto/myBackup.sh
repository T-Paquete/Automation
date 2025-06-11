
#!/bin/bash

# myBackup: backup utility for dev directory

BACKUP_PATH="/home/username/Learning_directory/dev/"
HOME_PATH="/home/username/Learning_directory/"

DATE=$(date +%d%m%Y)
BACKUP="backup_"
EXT=".tar"

FILE_NAME=$HOME_PATH$BACKUP$DATE$EXT

tar cfz $FILE_NAME $BACKUP_PATH

if test -f "$FILE_NAME"; then
    echo "Here's your daily backup@" | mail -A $FILE_NAME -s "Today's Backup" example@gmail.com
else
    echo $DATE "There was a problem creating the backup file." >> $HOME_PATH/error.log
fi


