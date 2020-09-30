### 1. In which file is Static IP address given so that it becomes Permanent?
#### /etc/sysconfig/network-scripts/ifcfg-eth0
### 2. To check which Service is running at presentin system what is the command?
#### ps -ef
### 3. How to trace any process background processing?
#### ps -aux
### 4. What is the difference bitween Telnet and SSH?
### 5. What is Different bitween unix and linux?
### 6. What is mean by raid and what are all raids available even in software and hardware?
#### Raid Sstands for Redundant Array of independent Disks it improve Performence and FaultTolerance.
#### Totally there are are 6 levels in Raid
####  0 - stripping
####  1 - Mirroring
####  2 - Stripping and Mirroring
####  3 - Onfficially Not Defined
####  4 - Striping with Differenttial Parity
####  5 - Striping with Distributionl Parity
### 7. why the Kernel panic error was appering?
#### Kernel panic acrued when linux kernal can not communicat with any hardware or any OS related file.
### 8. What is minimum number of partitions you need to install Linux?
### 9. How can you see all mounted Drives?
#### mount   or   df -Th
### 10. How to check all open ports in linux?
#### nmap -sT -O localhost   [ U for  UDP ]
#### netstat -tulpn | grep LISTEN 
#### -t : Show only TCP sockets on Linux
#### -u : Display only UDP sockets on Linux
#### -l : Show listening sockets. For example, TCP port 22 is opened by SSHD server.
#### -p : List process name that opened sockets
#### -n : Don’t resolve service names i.e. don’t use DNS



#### nmap -sT -O localhost
### 11. What are RPM?
#### The full form of RPM is Redhat Package Manager . rpm is powerful package manager, which can be used to build , install, query ,verfy , upload , and erase individul software packages.
### 12. What is the name and path of main system log ?
#### var/log/messages - system log massages can be seen here
#### var/log/dmesg  - Kernel boot log massages can view?
       ###### DRISHTI SOFTWARE ########
### 13. What is DNS ? How it related with subnet mask?
### 14. what are relation bitween IP address and subnet mask?
        #### LALITKORE LTD ##########
### 15. What are the packages for Apache server configuration?
### 16. About DNS server configuration file ,packages etc.?
### 17. How many types of zone in DNS?
### 18. How to call script through cron job?
### 19. about DHCP?
### 20. What is out put of top command?
### 21. How to check CPU information?
### 22. How to check memory information?
### 23. How to check Kernal version?
### 24. how to show top and below line of any file?
     ### Sapient###
### 25. How to check http version?
### 26. How to stop firewall service?
### 27. what is .bashrc and .bash_profile?
### 28. what is difference bitween web and application server?
### 29. How to find pradeep in a text file?
         ### AGILIS INTERNATIONAL LTD.###########
### 30. How to check CPU users?
### 31. How to check Disk space?
### 32. how to check how many process are running?
### 33. what is name of SAMBA configuration file?
### 34. what is GREP command ? what is the use of option a,l,v,r,e?
### 35. how to check which run lable you are working right Now?
     ### KRITICAL SOFTWARE###
### 36. What is PORt Number of SFTP?
### 37. What is AWK?
### 38. How to find all last 30 day file?
### 39. What is inode?
### 40. how many run lable in linux ? How to change run level?
### 41. How can you find out how long the system has been running?
### 42. How do you check siz of all user home Directory?
### 43. What is NFS ?
### 44. How do you count words,lines and charecters in a file?
### 45. what are PID?
### 46. How will you find package is install or not?
### 47. what linux command control Default file permassing when file are created?
### 48. How do you find out what is your shell?

### Q . Apache ....
#### service name
#### config file  path
#### root  folder path 
#### log file 
#### /usr/sbin/httpd -t   [ ( syntex ok ) how to verify httpd.conf  file to ensure no configuration sentex errer? ]
#### errar  codes means ---
####   200 -- content foud service OK
####  404 -- page not found
####   403 -- when the user that is running the web service process does not have sufficent permission to read the file .
####   500 -- internal server error or  problem in .htaccess
####   503 --  service is tobusy toserver the service or service  unavailable.
####   504 -- getway time out .
### port number --
####  FTP , SSH , telnet , smtp ,http , https , pop3 , ntp, ldap ,mysql , WHM , Cpanel
### Q crontab ---
#### minute   hour  day  month  day_of_week
####      *   *     *    *      *           /root/backup.sh
#### 1.  Run cron job every minute.
#### 2.  Run  crone job every  30 minute.
#### 3.  Run crone job every hour 
#### 4.  Run crone job every day at midnight
#### 5.  Run crone job  at 2 AM
#### 6.  run crone every 15th of the month
#### 7.  run  crone december 1th at mid night
#### 8.  ru crone job on saturday  midnight
#### 9.  run crone job every 15 minute
#### 10.  run crone job monday to friday at 4 am
#### 11. rum croe job 4 am on tuesday and thursday
--------------------------------------------------------------------------------------------
###  How to check CPU information?
####  how to check memory information?
####  how to check kernal version ?
####  what is name of Samba configuration file ?
####  what is the port number of SFTP ?
####  how to change root password ?
####  how to find all last 30 day file ?
####  how can you see all mounted drives ?
#### how to check all open ports on linux machine.
#### how can you find out how long the system has been running ?
#### what is shall ?
##### how to executed a a linux command in the background ?
#### what is NFS ? what it 's job ?
##### how do you find out what's your shell .
#### how do you count words ,line and characters in a file .
#### what is file system ?
#### what are PIDs ?
#### Q. tar,grep ,find , sed,awk,vim,ls ,pwd ,cd ,gzip,shoutdown , ftp,cronttab ,service ,ps ,free
### top,df ,kill,rm , rmdir cp ,mv , cat ,mount,chmod ,chown ,passwd ,mkdir , ifconfig , uname ,locate ,
#### man ,rpm ,ping data ,wget ,rpm   ( -qa , -ivh ) , tail, head
### Q.  yum , apache , NFS, ssh ,FTP ,lVM , iptables ,
