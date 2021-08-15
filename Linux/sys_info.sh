#!/usr/bin/env bash

#mkdir ~/research_two 2> /dev/null
echo "Tyson's Script" >> ~/research_two/sys_info.txt
date
echo -e "$date" >> ~/research_two/sys_info.txt \n
echo -e "Machine Type:" >> ~/research_two/sys_info.txt \n
echo -e "$MACHTYPE" >> ~/research_two/sys_info.txt \n
echo -e "Uname info: $(uname -a) \n" >> ~/research_two/sys_info.txt \n
echo -e "IP info: $(ifconfig | grep inet | head -1) \n" >> ~/research_two/sys_info.txt \n
echo -e "Hostname: $(hostname -s) \n" >> ~/research_two/sys_info.txt \n
echo -e "DNS Server" >> ~/research_two/sys_info.txt
cat /etc/resolv.conf >> ~/research_two/sys_info.txt \n
echo -e "Info on this CPU: $(lscpu) \n" >> ~/research_two/sys_info.txt \n
echo -e "Disk space: $(df -a) \n" >> ~/research_two/sys_info.txt \n
echo -e "Users currently logged in: $(who -a) \n" >> ~/research_two/sys_info.txt \n

echo -e "nSUID Files:" >> ~/research_two/sys_info.txt
find / -type f -perm 777 >> ~/research_two/sys_info.txt
ps aux -m | awk {'awk print $1, $1, $3, $4, $11'} | head >> ~/research_two/sys_info.txt

