#!/bin/bash

# Author: Kaiheng
# Description: this shell file will demenstrate how to use operator in shell
# there is no operator can be used by the native shell. So If we want to use
# Operator in shell, we need to use other tools, such as expression or awk, to
# implement the requirement.

# define a asign value to a variable
val=`expr 2 + 2`;
echo "2 + 2 is $val";
echo "the operator in expression is same with C++";
echo "but there is a very import tip we should take care with";
echo "if you want to use [] to get the boolean value. there must be
a blank space after the [ and befor ]";
if [ $val==4 ]; then \
    echo "expr 2 + 2 == 4"
fi
## Please check the difference betwee the above and following style.
## You can treat ; as the symbol of the end of the command. If should be 
## completed command without any followers.
echo "there is another style to use if and fi";
if [ $val==4 ]
then
    echo "expr 2 + 2 == 4 is correct"
fi
echo "the following demo is used to show how to use *";
var1=`expr 2 \* 2`
if [ $val==`expr 2 \* 2` ]; then \
   echo "when you want to use operator *, you should add \\ before *;
for example: 2 \\* 2"
fi
## the following code is used to show the relation operator
## -eq: represent equal
## -ne: represent no equal.
## -gt: represent greater than
## -lt: represent less than
## -ge: represent greater or equal
## -le: represent less or equal.
## there must be a blank space between operator and value for relation operator.
if [ 4 -eq `expr 2 \* 2` ]
then
    echo "the -eq operator testing success"
fi
## Boolean Operator
## !: represent not
## -o: represent or
## -a: represent and
## there must no sapce between no opertor and value.
## but there must be space between -o and -a operator and value.
## the && and || opertor can also be used in shell.
## so the boolean operator can be used as C++.
if [ $val -le $var1 ]; then \
    echo "less than is ok"
fi
if [ !$val ]; then \
    echo "no operator is ok"
fi
if [ $val -o 4 ]; then \
    echo "or operator is ok"
fi
## Operators for string
## =: is used to check if the two strings are same or not. If same return ture.
## !=: oposite with operator '='
## -z: to check if the length of string is zero or not. If zero return true.
## -n: oposite with -z
## $: to check if the string is empty or not. If not empty return true.
a="abv"
b="efg"
if [ $a = $b ]
then
    echo "the equal operator passed"
else
    echo "the equal operator is ok"
fi
if [ $a != $b ]; then \
    echo "string a is not equal with string b"
fi

if [ -z $a ]; then \
    echo "string a is not zero length"
fi
if [ -n $a ]; then \
    echo "-n operator is ok"
fi
if [ $a ]; then \
    echo "string a is not empty"
fi
## Operator for the file testing
## -b: check if the file is a block device file.
## -c: check if the file is a character device file or not.
## -d: check if the file is directory or not.
## -f: check if the file is a normal file or not.
## -g: check if the file set SGID or not.
## -k: check if the file set sticky bit or not.
## -p: for pipe
## -u: for SUID
## -r: for read
## -w: for write
## -x: for execute
## -s: check if the file is empty or not. If not empty return true.
## -e: check if the file[directory] is existing or not. If exits return true.
##Others:
## -S: check if the file is a socket or not.
## -L: check if the file exists and contain a chracter linkage.

