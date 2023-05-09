# zgrep "CreditAccountResponseParser"  TelecelZimbabweBilling.log* | grep "ErrorDescription" | awk -F "ErrorDescription>" '{print $2}' | awk -F "." '{print $1}' | sort | uniq -c
      3 Fail to find the balance
 410721 Not sufficient balance
    117 The subscriber can not be found
     44 The subscriber has been terminated


-----------------------------------------------------------------------------------------------------------------------------------------------

# awk '{print $0}' myfile                                 ------------- ( $0 = cat file )

# awk '{print $1 }' myfile                                ------------ ( $1 =  print first colam ) 

# awk 'BEGIN {print "#Ajeet \n Yadav"}{print $0}' myfile  ---------- { BEGIN= print befour content of file }

# awk  '{print $0} END {print "####\n****\n#"}' myfile     -------- ( end = print end of line ) 

# awk -F: '{print $1}' test2.txt                           ------------------- { -F  field separator }

# ls -l  /* | awk '/^d/ {$print $0}'                       -------------------{ print where find d in first line of file }

# ls -l /* | awk '$2 ~ /$60/ {print $0}                    ---------------------{ grep 60 from 2 colum only }

# ls -l /* |awk '$2 ~ /^1$/ {print $0}'                    --------------------{ ^ = starting and $ =  ending }

# ls -l /* | awk '$3 ~ /centos/ {print $0}'               ----------------------{ grep centos form $3 colama }

# ls -l /* | awk ' $5 > 1054 { print $0 }'                ----------------------{ find $5 > 1054 only }

# ls -l /* | awk ' $5 < 1054 { print $0 }'                ----------------------{ find $5 < 1054 only }

# ls -l /* | awk ' $5 == 1054 { print $0 }'               ---------------------- { find $5 == 1054 only }

# ls -l /* | awk ' $5 == 6 && $2 == 2 { print $0 }'       ----------------------{ use and operator }

# ls -l /* | awk ' $5 == 6 || $2 == 2 { print $0 }'       ----------------------( || = or operator )

# ls -l /* | awk '{ print NR , $0 }'                      ----------------------( NR = print number of row in output )

# ls -l /* | awk '{ print NR , $0 , NF }'                 ----------------------( NR = print number of row and number of colam in output )

# ls -l /* | awk ' NR == 4, NR == 8 { print $0}'         ---------------------{ Print from 4 to 8 number in file } 

#  awk '{print $1,$2}' OFS='.....' abc.txt               ---------------------{ OFR is fild separator }

condition in awk ------------------------------------------------------------------------

# ls -l /* | awk 'BEGIN {count=0;} {if ($6 == "Nov") count+=1} END {print count}' -------- { count number of Nov in 6 colam }

# awk '{for(i=0; i<10; i++) print $0}' abc.txt         ---------------------------------- { use loop print file output in 10 time } 

# ls -l /* | awk 'BEGIN {count=0;} {if ($8 == "2021") count+=1} END {print count}' 

# echo "Hello Tom" | awk '{$2="Admin"; print $0}'          ------------( replace tom to Admin )

Hello Admin

# awk -F: -f testfile test2.txt

Hello ajeet yadav file
---------------------------------------------------------------------------------------------------------------
# cat myscript
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


# cat test3.txt
1235196521
9272823652
3625728157

# awk 'BEGIN{FIELDWIDTHS="3 4 3"}{print $1,$2,$3}' test3.txt
123 5196 521
927 2823 652
362 5728 157


You need to set the FS to the newline (\n) and the RS to a blank text, so empty lines will be considered separators.

# cat test4.txt
Person Name
123 High Street
(222) 466-1234

Another person
487 High Street
(523) 644-8754

# awk 'BEGIN{FS="\n"; RS=""} {print $1,$3}' test4.txt
Person Name  (222) 466-1234
Another person (523) 644-8754
[root@ip-172-31-31-177 centos]#

The NF variable specifies the last field in the record without knowing its position:

# awk 'BEGIN{FS=":"; OFS=":"} {print $1,$NF}' /etc/passwd
root:/bin/bash
rpc:/sbin/nologin
rpcuser:/sbin/nologin
nfsnobody:/sbin/nologin
sshd:/sbin/nologin
postfix:/sbin/nologin
chrony:/sbin/nologin
centos:/bin/bash
mysql:/bin/false
