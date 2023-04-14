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
# stat test.txt                          check  file detailes information
  File: ‘test.txt’
  Size: 0               Blocks: 0          IO Block: 4096   regular empty file
Device: ca01h/51713d    Inode: 4573325     Links: 1
Access: (0644/-rw-r--r--)  Uid: (    0/    root)   Gid: (    0/    root)
Context: unconfined_u:object_r:user_home_t:s0
Access: 2023-04-14 09:46:54.543624305 +0000
Modify: 2023-04-14 09:46:54.543624305 +0000
Change: 2023-04-14 09:46:54.543624305 +0000
 Birth: -


