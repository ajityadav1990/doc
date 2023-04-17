### 1. tar command example ?
### 2. grep command example ?
### 3. find command example ?
### 4. ssh command example ?
### 5. sed command example ?
### 6. awk command example ?
### 7. vim command example ?
### 8. ls command example ?
### 9. pwd command example ?
### 10. cd command example ?
### 11. gzip command example ?
### 12. unzip command example ?
### 13. shutdown command example ?
### 14. ftp command example ?
### 15. crontab command example ?
### 16. service command example ?
### 17. ps command example ?
 ps =   user+ PID+  process starting Time + process
 
 ps -ef | grep -i tom 
 
 Ex :     UID        PID    PPID  C   STIME  TTY          TIME       CMD
          root     14473     1    5   May22  ?        03:03:51       /usr/java/jdk1.8.0_45/
### 18. netstat command example ?
Listing of the LISTENING Ports (open or free)	   
Ex :  netstat -nlp  | grep 8383  
      tcp        0      0 :::8383                     :::*                        LISTEN      4646/java 

 Find out how many listening programs running on a port.
 
 Ex :   netstat -ap | grep http 

### 18. free command example ?
### 19. top command example ?
### 20. df command example ?
### 21. Kill command example ?
### 22. rm command example ?
### 23. cp command example ?
### 24. cat command example ?
### 25. mount command example ?
### 26. chmod command example ?
### 27. chown command example ?
### 28. passwd command example ?
### 29. ifconfig command example ?
### 30. uname command example ?
### 31. locket command example ?
### 32. man command example ?
### 33. tall command example ?
### 34. less command example ?
### 35. su command example ?
### 36. mysql command example ?
### 37. yum command example ?
### 38. ping command example ?
### 39. date command example ?
### 40. wget command example ?
### inode  :-   The inode is a data structure in linux file system that describes a 
file-system object such as a file or a directory. Each inode stores the attributes and disk block
 locations of the object.


### Umask   :-   When user create a file or directory under Linux or UNIX, files. It can be  control the default file permission.

### 41. Linux’s files have 3 timestamps ?

(atime) Access timestamp : which indicates the last time a file was accessed.

(mtime) Modified timestamp : which is the last time a file’s contents were modified.

(ctime) Change timestamp : which refers to the last time some metadata related to the file was changed

### 42. stat command example ?

# stat test.txt         ----------------   check  file detailes information

  File: ‘test.txt’
  
  Size: 0               Blocks: 0          IO Block: 4096   regular empty file
  
   Device: ca01h/51713d    Inode: 4573325     Links: 1
   
   Access: (0644/-rw-r--r--)  Uid: (    0/    root)   Gid: (    0/    root)
   
   Context: unconfined_u:object_r:user_home_t:s0
   
   Access: 2023-04-14 09:46:54.543624305 +0000
   
   Modify: 2023-04-14 09:46:54.543624305 +0000
   
   Change: 2023-04-14 09:46:54.543624305 +0000
   
    Birth: -

### APACHE  -----------------------------------------------------

service name httpd

port number http 80 , https 443

config file /etc/httpd/httpd.conf

Log File

/var/log/httpd/access.log

/var/log/httpd/error.log

apache webroot or document root patch :   /var/www/html

To check apache config file syntex error?

/usr/sbin/httpd -t

syntax ok

/usr/sbin/httpd -t [ ( syntex ok ) to verify httpd.conf file to ensure no configuration sentex errer? ]

what does error codees mean ?

200 -- content fount server ok

403 -- when the users that is running the web server process does not have sufficent permmissionns to read the file .

404 -- page not fount

500 -- iternal server error or .htaccess

503 -- server is too busy to serve the request / service unavelable.

504 -- gateway time out

### FTP  ( File Transfer Protocol ) ----------------------  

Default port :-   21 and 20

Use          :-   VSFTP

Clint        :-   FTP

rpm  -qa | grep vsftpd

Yum install  vsftpd

config path :- 

/etc/vsftpd/vsftpd.config		

anonymous_enable=NO

Uncomment

asciii_upload_enable=YES

ascii_download_enable=YES

May add

Use_localtime_YES

systemctl  start   vsftpd

systemctl  enable  vsftpd 		   

Stop firwall or allow ftp to firewall 

Systemctl stop   firewall

systemctl status firewall

Clints :- 

install FTP

ftp 192.168.29.41

enter username :

enter password :

ftp>

ftp > put testfile.txt

ftp > mput file1 file2    ( multiple file transfer by FTP )
ftp > pwd 

ftp > bye

### NFS  ( File Sharing Server ) [ Linux to Linux ]-----------------------

Default port :- 2049

#yum install nfs-utils             ( Both Server & client )

#mkdir abc ( 1.txt, 2.txt, 3.txt, 4.txt ,5.txt )

#vim /etc/exports

/home/abc       192.168.122.0/24(rw,sync)

:wq!

#exportfs

#exportfs    -r

#exports
/mnt/abc   192.168.122.0/24

------entry in firewall -----

#firewall-cmd   --permanent --add-service=nfs
#firewall-cmd   --reload

or

#systemctl stop firewall

#systemctl start nfs

#systemctl enable nfs

-------client--------------
mount

vim /etc/fstab

192.168.122.186:/home/abc             /home/abc      nfs   default  0  0

:wq

mount -a




