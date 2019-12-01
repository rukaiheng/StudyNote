#!/bin/bash
## Author: kaiehng
## Description: this file is used to demonstrate the process control shell script.

## If elif else fi // this should be the format of if sentence
## If you want to write the command as a single line. You can write it as 
## if expression; then command; fi
## or you should write the if command as 
## if expression
## then
##    command1
##    command2
##    ...
## fi
## if expression
## then
##     command1
## elif expression
## then
##     command1
## else
##    command1
## fi
a=10
b=20
if [ $a == $b ]; then \
echo "a is equal with b"
elif test $a -lt $b
then
echo "a is less than b"
else
echo "a is not equal with b"
fi
## for loop
## the following script give the demo on the usage of for loop
## for var in item1 item2 .. itemN; do command1; command2 ... done
for loop in 1 2 3 4 5
do 
    echo "the value is : $loop"
done

for str in 'this is a string' 'dfdfd'
do
    echo -e "$str \n"
done
## while loop
## while condition
## do
##    command
## done
## let command
## (( the two  parentheses must be stay together.
int=1
while(( $int <=5))
do 
    echo $int
    let "int++"
done
## type in you favoriate web sit
## read is a command can read what you type in the terminal.
#echo "press <Ctrl +D> to quit"
#echo -ne "please type in your favoriate webset \n"
#while read FILM
#do 
#    echo "yes, $FILM is a good webset"
#done
## infinit loop 
## while :
## do
##    comamnd1
## done
## while true
## do
##    command
## done
## for(( ; ; ))
## until loop
## until condition
## do
##    comamnd
## done
## this loop will be breaked until the condition is true. It's oposite to while loop
for ((i=1;i<=5;i++)); do
    echo "the index is $i"
done

a=0
until [ ! $a -lt 10 ]
do
    echo $a
    a=`expr $a + 1`
done
## the following code is the case
## case value in
## case1)
##    command
##    command2
##    command3
##    ;;
## case2)
##    command1
##    ...
##    commandN
##    ;;
# esac
echo "please type in integer between 1 and 4"
echo "the integer you typed in is:"
read number
case $number in
    1) echo "you type in 1"
    ;;
    2) echo "you type in 2"
    ;;
    3) echo "you type in 3"
    ;;
    4) echo "you type in 4"
    ;;
    *) echo "you type in other number"
    ;;
esac
echo "you can use break to jump out the loop"
while :
do
    echo -n "please type in integer between 1 and 5:"
    read number
    ## the case method can be used like following case:
    case $number in 
	1|2|3|4|5) echo "you type in the correct number"
	;;
	*) echo "you type in a wrong number"
	break
	;;
    esac
done
## the continue key word is same with C++ and C language.
## case in very different with C-like language
