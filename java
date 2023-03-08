
Download .tar.gz file to /usr/java/

[jdk download ] 

tar –xvzf jdk-17_linux-x64_bin.tar.gz

chmod -R 755 /usr/java/

-----------------------------------------------------------------------
1. Set Global -----------------------
/etc/profile     Global
or /etc/profile.d    (save bash_profile content in .sh file) 



2 .  set path in application profile 
  mostly use this 
  
3. Set only for single user --------

vim /home/user1/.bash_profile  

export JAVA_HOME=/usr/java/jdk-17
export PATH=$JAVA_HOME/bin/:$PATH
  
 $. bash_profile
 $source bash_profile
  
 
echo $JAVA_HOME
echo $PATH 
java --version
