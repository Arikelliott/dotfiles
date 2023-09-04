#! /bin/bash

# THINGS TO ADD
#
# - SSH to remote server
#       -e (change default shell) ssh (use ssh for shell) [local file path] [username@ip:remote file path]
# - exclude certain directories from copying
# - delete files not found in local copy
#       --delete
# - do it quietly
#       --quiet
# - do an incremental or differential backup
# - If differential, do it with multiple copies of the backup somehow?
# - preserve file and directory characteristics (ownership, permissions, etc), and do it recursively
#       -a "-a: groups all these options -rlptgoD (recursive, links, perms, times, group, owner, devices)"
# - Refer to "Differential backup on a week" section on archwiki

# Variables
source /home/arik/backup-script/backup-script-variables.sh

rsync --verbose --delete -a -e ssh /home/arik --exclude-from=/home/arik/backup-script/exclude.txt arik@192.168.1.3:/home/arik/mount/backup/arik-home/