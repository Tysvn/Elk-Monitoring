#!/bin/bash

echo -e "Free mem: $(free -h) \n" >> ~/backups/freemem/freemem.txt
echo -e "Disk space: $(df -h) \n" >> ~/backups/diskuse/diskuse.txt
echo -e "Open list: $(ps ax) \n" >> ~/backups/openlist/openlist.txt
echo -e "Free space: $(du -h) \n" >> ~/backups/freedisk/freedisk.txt

