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

#####---RPM-------------------------

The full form of RPM is Redhat Package Manager . rpm is powerful package manager, which can be used to build , install, query ,verify , upload , and erase individual software packages.

#rpm -qa | grep -i name  ---------------------- ( find package install or not )

#rpm -ivh  peazip-1.11.1.el6.rf.rpm-------------(  install package )

#rpm -ev postfix-2.10.1.6e17x86_64 ------------( Remove packages )

#rpm -ql httpd  --------------------------------( Can see all the file and directory installed and created by about package )

#rpm  -ql httpd

Should have rpm package in system.

RPM never install dependencies package.

###----------YUM--------------------------

yum is also package  installer but   yum  install dependencies  package also.

#yum clean all------------------------( Clean All Cached Files)

#yum repolist all---------------------( show list of package )

#yum info vsftpd----------------------( list info about Vsftpd )

#yum install docker-------------------( install package )

#yum update---------------------------[ Update all packages with available updates ]

#yum update httpd ---------------------[ Update the httpd package (if available) ]

configure yum server local or FTP-------------

#mount rhel-server-7.1-x86_64-dvd-iso   /mnt

#cd /mnt/rhel-server-7.1/package/

#cp -rvf cd /mnt/rhel-server-7.1/package/*  /data/pack

#unmount /dev/loop0

#cd /data/pack

#ls /grep -i createrepo

#rpm ivh creterepo.o.g.rpm

first install depandicy package related creterepo package

#rpm -ivh deltarpm-3-6-3.el7.rpm

#rpm ivh creterepo.o.g.rpm

#createrepo  -v . -------------------------------------------( create repo for all package )

#yum-config-manager  --add="rhel"

#vim /etc/yum.repos.d/rhel.repo

[rhel 7]
 
name=rhel7

baseurl=ftp://www.redhad.com/pub/package  ----------------[ for FTP Server ]

bashurl= path --------------------------------------------[ for local yem ]

enabled = 1

gpgcheck = 0
 
 :wq!
 
yum clean all

yum repolist all

yum install httpd




