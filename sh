wc
wc ajeet
4     30       130            ajeet
line  word   charcecter       name  
wc -l ajeet
4     ajeet    print line
wc  -w  ajeet
30  ajeet  print word
sort   { it's desplay in alfabaticla order ]
cat  anu 
A p  c m d k L 
short anu
p c m d A K L

cut ----
cat anu
name     sport     age 
ram       hoky      30
raman     futball   20
pankaj     golf     32
 
cut -d "_" -f 1,3  anu
name         age 
ram          30
raman        20
pankaj       32
cut -d "_" -f 2 anu
name    
ram       
raman     
pankaj  

1.sh   :------------------------------
variable :-  it is like a contener where we store data.

echo " please enter your name "
read my_name
echo " Hello  $ my_name How are you"

2.sh : -----------------------------
vim 2.sh 
echo  "provide file name "
read  name
cat $name
output  
sh 2.sh    old file name
Provide a file name 
random   ----it's renamed file 
3.sh : -------------------------------
chmod 744 $1
ls -l
output 3.sh abc.txt
4.sh : -------------------------------
name =$1
set `who am i`
mv $name $name.$1
output :-
sh 4.sh text
ls text will rename text.mudur
5.sh ------------------------------------

# Arithmatical   operations     output
a = 30   b= 15
echo    'expo $a + $b'           45
echo    'expo $a -$b'            15
echo    'expo $a \* $b'          450
echo    'expo $a / $b'            2
echo    'expo $a % $b'            0
6.sh
a = 37 , b =15 , c =2, d = 5

echo 'expo $a \* \ ($b + $c\) / $d '
6.sh -----------------------------------------
# floating point arithmetic
a = 10.5
b = 3.5
c = 'echo $a + $b | bc '
d = 'echo $a - $b | bc '
e = 'echo $a \* $b | bc '
f = 'echo $a / $b | bc '
echo $c $d  $e $f                    [ output  14   0.7 0.36 .73 ]
7.sh ----------------------------------------------
echo " hi world , \n what's up"                 [ \n print new line ]
output  hi world 
        what's up
echo " hi world , \r what's up"                 [ \r hide befour it ]
 output  what's up
echo " hi world \t what's up"                   [ give space and for more space edit \t more]
output        hi world    what's up
echo  " hi world \b\b\b what's up"              [ delete word 1 by 1 ]
8.sh ---------------------------------------------------
# if then statement in action
echo " enter source and target file name"
read source target
if  mv $source $target
then
echo "your file has been successfull renamed"
fi
output : 
sh 8.sh
enter source and  target file name
abc  ajeet
your file success full renamed.
9.sh -----------------------------------------------------
# if then else  
echo " enter source and target file "
read  source  target
if mv $source $target
then
echo " your file is success full renamed "
else
echo " the file could not be renamed "
fi
10.sh   ---------------------------------------------------
echo " enter a number bitween 10 and 20 :\c"
read num
if [$num -lt 10]
then
echo " it is under 10 "
elif [$num  -gt20]
then
echo " it over my hade"
else 
echo " now you out of rang"
fi
-------------------------------------
#/bin/bash
echo "Enter a name "
read fname
if [ -f $fname ]
then  |---------------------------( -d  for directory )
echo "You indeed entered a file name"
else
echo "This is not file name"
fi
---------------------------
#/bin/bash
echo "Enter a number bitween 50 to 100"
read num
if [ $num -le 100 -a $num -ge 50 ]
then
echo "You are withing limits"
else
echo "you are out of limit."
fi
-----------------------------------
#/bin/bash
echo "Enter a character"
read var
if [ $var = a -o $var = e -o $var = i -o $var = o -o $var = u ]
then
echo "You entered a vowel."
else
echo "you did not enter a vowel."
fi
------------------------------
#/bin/bash
echo "Enter a character"
read var
case $var in
[a-z])
echo "you enter a lower case alphabet"
;;
[0-9])
echo "You enterd a digit"
;;
?)
echo "You entered a spacial symble."
;;
*)
echo "you entered more then one charater."
;;
esac
--------------------------------
-------------38-------------------------------- 
  
