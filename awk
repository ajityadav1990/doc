[root@TelecelZimbabwe 2021-12-31]# zgrep "CreditAccountResponseParser"  TelecelZimbabweBilling.log* | grep "ErrorDescription" | awk -F "ErrorDescription>" '{print $2}' | awk -F "." '{print $1}' | sort | uniq -c
      3 Fail to find the balance
 410721 Not sufficient balance
    117 The subscriber can not be found
     44 The subscriber has been terminated
[root@TelecelZimbabwe 2021-12-31]#

-----------------------------------------------------------------------------------------------------------------------------------------------

[root@ip-172-31-31-177 centos]# awk 'BEGIN{print "Welcome to my world"}';
Welcome to my world
[root@ip-172-31-31-177 centos]#

[root@ip-172-31-31-177 centos]# awk '{print $0}' myfile
This is a test.
This is the second test.
This is the third test.
This is the fourth test.
[root@ip-172-31-31-177 centos]# awk '{print $1 }' myfile
This
This
This
This

[root@ip-172-31-31-177 centos]# awk 'BEGIN {print "############Ajeet############\n#######Yadav########"}{print $0}' myfile
############Ajeet############
#######Yadav########
This is a test.
This is the second test.
This is the third test.
This is the fourth test.

[root@ip-172-31-31-177 centos]# cat myfile
This is a test.
This is the second test.
This is the third test.
This is the fourth test.

[root@ip-172-31-31-177 centos]# awk  '{print $0} END {print "###################\n*********\n#######"}' myfile
This is a test.
This is the second test.
This is the third test.
This is the fourth test.
###################
*********
#######

[root@ip-172-31-31-177 centos]# cat test2.txt
Hello:this:is:my:first:awk:file

[root@ip-172-31-31-177 centos]# awk -F: '{print $1}' test2.txt
Hello
[root@ip-172-31-31-177 centos]#

[root@ip-172-31-31-177 centos]# echo "Hello Tom" | awk '{$2="Admin"; print $0}'
Hello Admin
[root@ip-172-31-31-177 centos]#


[root@ip-172-31-31-177 centos]# awk -F: -f testfile test2.txt
Hello ajeet yadav file
[root@ip-172-31-31-177 centos]# cat testfile
{

text = $1 " ajeet yadav " $7

print text

}

[root@ip-172-31-31-177 centos]#
[root@ip-172-31-31-177 centos]# awk -F: -f testfile test2.txt
Hello ajeet yadav file
[root@ip-172-31-31-177 centos]#


---------------------------------------------------------------------------------------------------------------
[root@ip-172-31-31-177 centos]# cat myscript
BEGIN {

print "Users and thier corresponding home"

print "UserName\tHomePath"

print "_____\t____"

FS=":"
}
{
print $1" \t "$6

}

END {

print "The end"

}
[root@ip-172-31-31-177 centos]# awk -f myscript /etc/passwd
Users and thier corresponding home
UserName        HomePath
_____   ____
root     /root
bin      /bin
postfix          /var/spool/postfix
chrony   /var/lib/chrony
centos   /home/centos
mysql    /var/lib/mysql
The end
[root@ip-172-31-31-177 centos]#
------------------------------------------------------------------------------

FIELDWIDTHS     Specifies the field width.

RS     Specifies the record separator.

FS     Specifies the field separator.

OFS  Specifies the Output separator.

ORS  Specifies the Output separator.

---------------------------------------------------------------------

------------------------------------------------------------------------------

FIELDWIDTHS     Specifies the field width.

RS     Specifies the record separator.

FS     Specifies the field separator.

OFS  Specifies the Output separator.

ORS  Specifies the Output separator.

ARGC     Retrieves the number of passed parameters.

ARGV     Retrieves the command line parameters.

ENVIRON     Array of the shell environment variables and corresponding values.

FILENAME    The file name that is processed by awk.

NF     Fields count of the line being processed.

NR    Retrieves total count of processed records.

FNR     The record which is processed.

IGNORECASE     To ignore the character case.

[root@ip-172-31-31-177 centos]# cat test.txt

sshd:x:74:74:Privilege-separated SSH:/var/empty/sshd:/sbin/nologin
postfix:x:89:89::/var/spool/postfix:/sbin/nologin
chrony:x:998:995::/var/lib/chrony:/sbin/nologin
centos:x:1000:1000:Cloud User:/home/centos:/bin/bash
mysql:x:27:27:MySQL Server:/var/lib/mysql:/bin/false

[root@ip-172-31-31-177 centos]# awk 'BEGIN{FS=":"; OFS="----------------------"} {print $1,$6}' test.txt

sshd----------------------/var/empty/sshd
postfix----------------------/var/spool/postfix
chrony----------------------/var/lib/chrony
centos----------------------/home/centos
mysql----------------------/var/lib/mysql


[root@ip-172-31-31-177 centos]# cat test3.txt
1235196521
9272823652
3625728157

[root@ip-172-31-31-177 centos]# awk 'BEGIN{FIELDWIDTHS="3 4 3"}{print $1,$2,$3}' test3.txt
123 5196 521
927 2823 652
362 5728 157


You need to set the FS to the newline (\n) and the RS to a blank text, so empty lines will be considered separators.

[root@ip-172-31-31-177 centos]# cat test4.txt
Person Name
123 High Street
(222) 466-1234

Another person
487 High Street
(523) 644-8754
[root@ip-172-31-31-177 centos]#
[root@ip-172-31-31-177 centos]# awk 'BEGIN{FS="\n"; RS=""} {print $1,$3}' test4.txt
Person Name  (222) 466-1234
Another person (523) 644-8754
[root@ip-172-31-31-177 centos]#

The NF variable specifies the last field in the record without knowing its position:

[root@ip-172-31-31-177 centos]# awk 'BEGIN{FS=":"; OFS=":"} {print $1,$NF}' /etc/passwd
root:/bin/bash
rpc:/sbin/nologin
rpcuser:/sbin/nologin
nfsnobody:/sbin/nologin
sshd:/sbin/nologin
postfix:/sbin/nologin
chrony:/sbin/nologin
centos:/bin/bash
mysql:/bin/false
