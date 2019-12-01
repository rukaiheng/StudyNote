#!/bin/bash

## Author: Kaiheng
## Description: this file is for shell test
## shell test is used to check if a condition is passed or not.

# 1. Test the number
num1=100
num2=100
if test $[num1] -eq $[num2]
then
    echo "the two number are equal"
else
    echo "the two number are not equal"
fi
if test $num1 == $num2
then
    echo "the two number are equal for another usage"
fi
if test ${num1} == ${num2}
then
    echo "use {} to get the value of variable"
fi
echo "how about use [] to get the value of variable"
echo "$[num1]"
echo "we can do some simple calculation in brackets [] "
result=$[num1+num2]
echo "$num1 + $num2 is $result"
echo "$num1 + $num2 is $[num1+num2]"
#there should not space at each end of the equal operator.
if test $num1==$num2; then \
echo "check the position of == operator"
fi
num1="kaiheng"
num2="kaiheng.lu"
echo $num1;
if test $num1 = $num2; then \
echo "the two string are equal"
else echo "the two sring are not equal"
fi
if test $num1 != $num2
then 
echo "dfhdjfhdj"
else echo "the string are equal"
fi
echo "test the [] operator"
echo "2+2 = $[ 2+2 ]"
### If you want to use [] as the checker, you need leave a space after [ and before ]
if [ [2+2]!=4 ]; then \
echo "error usage"
else echo "correct usage"
fi
