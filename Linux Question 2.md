### netstat command in linux
### tcpdump  command in linux.
### 1. In which file is Static IP address given so that it becomes Permanent?
#### /etc/sysconfig/network-scripts/ifcfg-eth0
### 2. To check which Service is running at presentin system what is the command?
#### ps -ef
### 3. How to trace any process background processing?
#### ps -aux
### 4. What is the difference bitween Telnet and SSH?
### Why we use LVM in Linux?
### Q : How to create partition from the raw disk ?
Ans: Using fdisk utility we can create partitions from the raw disk :
– fdisk  /dev/hd* (IDE) or /dev/sd* (SCSI)
– Type n to create a new partition
–  After creating partition , type w command to write the changes to the partition table.
### 6. What is mean by raid and what are all raids available even in software and hardware?
#### Raid Sstands for Redundant Array of independent Disks it improve Performence and FaultTolerance.
### 5. Boot process ?
    BIOS -> MBR -> GRUB -> Kernal -> INIT -> Ru lable

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
### Q . explain all record in dns ?
#### MX record :- mail exchang records use to deterinig  the priorty of email server for domain.
#### SOS record :- start of authority ( first record in DNS )
#### NS Record :- Name server record
#### A or AAAA record  :- link ip to host .
           |_____use IP 6
#### CNAME record :- use for sub domain .
#### PTR Record  : also called reverseDNS record / reverse of a records.
#### SRV Record :- service record toutilize some service SRV record canbe request in your domain/ Host and port uber ofservice for specified service .
#### SPA record  :- sender policy framework .
#### DKIM record :-DKIM provides an encryption key and digital signature that verifies that an email message . The properly implemented DKIM record will improve the security of your email deliverability significantly.
#### TXT record  :- TXT records are a type of DNS record that contains text information for sources outside of your domain. Google uses them to verify domain ownership and to ensure email security.
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
### 38. How to find all last 30 day file?   ( find -mtime -30 & +30 befour 30 day )
### 39. What is inode?
####  An inode is a data structure that stores various information about a file in Linux, such as the access mode (read, write, execute permissions), ownership, file type, file size, group, number of links, etc. Each inode is identified by an integer number.
###   . What is Umask?
####  Umask is a Linux command that is used to assign the default file permission sets for newly created folders and files. 
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
### how to verify httpd.conf  file to ensure no configuration sentex errer? ]
#### errar  codes 
###  port number --
####  FTP , SSH , telnet , smtp ,http , https ,tomcat ,  pop3 , ntp, ldap ,mysql , WHM , Cpanel
###  Q crontab ---
####  minute   hour  day  month  day_of_week
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
#####  how to executed a a linux command in the background ?
#### what is NFS ? what it 's job ?
##### how do you find out what's your shell .
#### how do you count words ,line and characters in a file .
#### what is file system ?
#### what are PIDs ?
#### Q. tar,grep ,find , sed,awk,vim,ls ,pwd ,cd ,gzip,shoutdown , ftp,cronttab ,service ,ps ,free
### top,df ,kill,rm , rmdir cp ,mv , cat ,mount,chmod ,chown ,passwd ,mkdir , ifconfig , uname ,locate ,
#### man ,rpm ,ping data ,wget ,rpm   ( -qa , -ivh ) , tail, head
### Q.  yum , apache , NFS, ssh ,FTP ,lVM , iptables ,
#### Tomcat ----------------------------
#### tomcat  server :-
#### it have two container
#### 1 . catalina (sarelet)
#### 2.  jasper (jsp) 

#### Tomcat : 
#### type   : java based web server s/w
#### vender : apache foundation
#### open source / Freeware
#### default port : 8080

#### tomcate is very sutable for java applicatison or web site 
#### it is not use for larg website like ecomers site or bancking project
#### After installing tomcat we get some folder 
#### /bin
#### /conf
#### /lib
#### /log
#### /tmp
#### /webapps  -- webroot of tomcat { you have to place data in this folder ) 
