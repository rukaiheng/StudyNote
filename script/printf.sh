#!/bin/bash
## Author: kaiheng
## Description: this file is used to show how to use printf
# printf is another command we can use to show the information in terminal
# printf is very similar with printf in C language.

echo "printf format-string [arguments...]"
echo "hello, Shell"
printf "hello, shell\n"

echo "the follwing script show how to use printf"
echo "%s for string, %c for character, %d for decimal[number], %f for float"
printf "%-10s %-8s %-4s\n" 姓名 性别 体重kg
printf "%-10s %-8s %-4.2f\n" 国境 男 66.12334
printf "%-10s %-8s %-4s\n" 杨过 男 48.6543
printf "%-10s %-8s %-4.2f\n" 黄蓉 女 47.9876
printf "\- represent left aligned, without symbol represent right aligned.\n"
## Escape Character of Printf
## \a: for warning
## \b: for backward
## \c: for supresse
## \f: for formfeed 换页
## \n: for line feed
## \r: 回车 Carriage return
## \t: horizon table
## \v: vertical table
## \\: for \ slash

