#!/bin/bash
# author: kaiheng
# Description: this file is used to demostrate the usage of functions in shell.

## the format of shell function is
## [ function ] funname [()]
## {
##    action;
##    [return int;]
## }
## you can give function before funname or not. If you do not use return key word
## the function will return the value comes from the last sentence of the function
## notice: only integer between 1 and 255 can be used as the return value.

function demoFun(){
    echo "this is my first shell function"
}
echo "--- the function start running ---"
demoFun
echo "the function's return value is $? !"
echo "--- the function finished ---"
## define a function with retuern value
function fun_with_return(){
    echo "this function will return the sum of two numbers"
    echo "please input a number"
    read number1
    echo "please input the second number:"
    read number2
    echo "the first number is $number1 and the second number is $number2"
    echo "the sum is $[number1+number2]"
    return $(($number1+$number2))
    return $[numbe1+number2]
}
fun_with_return
echo "the sum of given numbers is $? !"
## the function can be passed the parameters
function fun_param(){
    echo "the first param is: $1"
    echo "the second param is : $2"
    echo "the input paramters are: $*"
}
echo "start to invoke the function with paramters"
fun_param 23 45
echo "the function running is finished"
