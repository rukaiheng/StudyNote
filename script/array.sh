#!/bin/bash
# Author: Kaiheng
# Data: 2019 12 1
# Description: the demonstration of usage of array

array_name=("A" "b" "c" "d");
array_name[0]="K"; # use this line to asign value to element of the array
# read the value of array element
echo ${array_name[1]};
for i in $array_name; do
    echo $i;
done
echo "Using * or @ can get all the values in array";
echo "all value in array are : ${array_name[*]}";
echo "The mthod to get the length of array is same with the method to get the length 
of string";
echo "the array length is : ${#array_name[*]}";
echo "using \${#array_name[@]} to get the length: ${#array_name[@]}";
