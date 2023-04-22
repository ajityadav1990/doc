
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


###  Boot process ---------------------------------

    BIOS -> MBR -> GRUB -> Kernal -> INIT -> Runlable
	
BIOS :-  Load & executed MBR Boot Loader

Search load and executed boot loader Program from Disk Drive, SD_card, Hard drive.

We can Chang the Disk Drive when BIOS start like CD or Hard Drive typically is F-12.

BIOS give control the boot loader program ones it boot loaded in the memory.

MBR  :-  stands for mostly boot record it is located in first sector of bootable disk , it is less then 512 bytes in size.

GRUB :- stand for grand unified boot-loader , if you have kernal image you can select which can boot.

it display the splase screen wait for few second , if nothing enter load 2 kernal IMAGE.

KERNAL :-  mount root file system as spasifide inthe GRUB configuration file.

Kernal executed init program.

INIT  :- Decided the run label

RUN LABELE :-  0 shut-down , 1 S U M , 2 M U M , 3 M U M with N , 4 Not in use , 5 Grafic , 6 Reboot 

### File System  : EXT4 [6.0], XFS [ Linux 7.0 ] ------------

/bin   :-  Local user command execution

/boot  :-  It holds boot loader (GRUB) Kernel & booting file

/dev   :-  It holds all the device file ( LAN,CARD,ETC)

/home  :-  Local user Home directory 

/mnt   :-  Temporary mount point for removed storage

/otp   :-  all third party application

/sbin  :-  Root's (super_user) command

/tmp   :-  Temporary hold file

/usr   :-  Application program

/var   :-  all service database 

/root  :-  root's home directory

/Proc  :-  Process file

/etc   :-  All the configure file and it's Subdirectory

Linux [ Type of file ]
 
  |___________Directory  ............. d 
  
  |___________Regular File ............. Created by User
  
  |___________Link file  ............... LAN
  
  |___________Block file ............... B
  
  |___________Charector file ........... C
  
### Link ------------------------

## Soft link ------

We can create soft link  for both file & directory, Soft link have different inode Number to main file.

If the original file is removed, the link will still work as it accesses the data

#ln -s filename newsoftlink file	 

## Hard link :-

Create only for file,

hard linked take the same inode number.

If the original file is removed, the link will still work as it accesses the data

#ln filename new_hardlink_file

### inode  :-

The inode is a data structure in linux file system that describes a 
file-system object such as a file or a directory. Each inode stores the attributes and disk block
 locations of the object.


### Umask   :-  

When user create a file or directory under Linux or UNIX, files. It can be  control the default file permission.

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

### RPM-------------------------

The full form of RPM is Redhat Package Manager . rpm is powerful package manager, which can be used to build , install, query ,verify , upload , and erase individual software packages.

#rpm -qa | grep -i name  ---------------------- ( find package install or not )

#rpm -ivh  peazip-1.11.1.el6.rf.rpm-------------(  install package )

#rpm -ev postfix-2.10.1.6e17x86_64 ------------( Remove packages )

#rpm -ql httpd  --------------------------------( Can see all the file and directory installed and created by about package )

#rpm  -ql httpd

Should have rpm package in system.

RPM never install dependencies package.

### YUM--------------------------

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

### explain all record in dns ?
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


### create partition from the raw disk ?

Ans: Using fdisk utility we can create partitions from the raw disk :

fdisk  /dev/hd* (IDE) or /dev/sd* (SCSI)

Type n to create a new partition

After creating partition , type w command to write the changes to the partition table.

### Find Command --------------------------
 
 Use to search file and directory in linux
 
 Find command used in variety of condition like you can find file by Permission , User , Groups , file, types , data , size .
 
 #find . -name tecmint.txt
 
 #find /home -name tecmint.txt
 
 #find / -type d -name Tecmint
 
 #find . -type f -name tecmint.php
 
 #find . -type f -perm 0777 -print
 
 #find / -type f ! -perm 777
 
 #find / -type f -perm 0777 -print -exec chmod 644 {} \;
 
 #find / -type d -perm 777 -print -exec chmod 755 {} \;
 
 #find . -type f -name "tecmint.txt" -exec rm -f {} \;
 
 #find / -mtime 50
 
 #find / -atime 50
 
 #find / -mtime +50 –mtime -100
 
 #find / -cmin -60
 
 #find / -mmin -60
 
 #find / -size 50M
 
 #find / -size +50M -size -100M
 
 #find / -type f -size +100M -exec rm -f {} \;
 
 #find / -type f -name *.mp3 -size +10M -exec rm {} \;
 
 Exampe : 
 
find . -maxdepth 1 -name "catalina*" -type f -mtime +120 -exec rm {} \;

find . -maxdepth 1 -name "catalina*" -type f -mtime +120 | wc -l

find  . -maxdepth 1 -name "*" -type f -mtime +60  -exec rm {} \;

find  . -maxdepth 1 -name "*" -type f -mtime +60  | wc -l

find  /u2opia/apache-tomcat-7.0.41_TelecelZMB_Notification/logs -maxdepth 1 -name "localhost_access_log.*.txt*" -type f -mtime +15 | wc -l
 
### Grep  :- 

#ls -lrth | grep -i python

#ls -lrth | grep -v "python"

#ls -lrth | grep -vi "python"

#ifconfig | grep -w "RUNNING"

UP BROADCAST RUNNING MULTICAST  MTU:1500  Metric:1

" –A " = after

#ifconfig | grep -A 4 inet

" –B " = before

#ifconfig | grep -B 2 UP

" –n " when debugging files during compile errors. It displays the line number in the file of the given search string:

#grep -n "main" setup.py

" –r " option to search recursively:

#grep -r “function” *

Search a string in Gzipped File
 
#zgrep -ic error /var/log/syslog.2.gz

Differences Between grep, egrep and fgrep

differences between ‘grep’, ‘egrep’ and ‘fgrep’ in the set of regular expressions used, and speed of execution

instead of “egrep” or “fgrep”, “grep -E” or “grep -F” are recommended to be used.




### system-clock &  Hardware-clock
 
Two clocks are important in Linux:  

First clock ‘hardware clock’, also known as RTC, CMOS or BIOS clock. This is the battery-backed clock that keeps time even when the system is shut down.

The second clock is called the ‘system clock/tick’ or 'kernel clock' and is maintained by the operating system. 

hwclock for accessing one of the hardware clocks directly. You can display the current time, set a hardware clock to a specified time, set a hardware clock to 

the system time, and set the system time from the hardware clock. Traditionally, on power off, the system clock will get stored into the hardware clock by a 

shutdown script.

------------set system-clock &  Hardware-clock ------------------

#date

Wed Jun  1 14:57:19 CAT 2022

#hwclock

Wed 01 Jun 2022 12:56:49 PM CAT  -1.053059 seconds


#hwclock --set --date "06/01/2022 14:03:45"

#hwclock

Wed 01 Jun 2022 02:03:51 PM CAT  -0.641803 seconds

#hwclock -s

#date

Wed Jun  1 14:03:58 CAT 2022




