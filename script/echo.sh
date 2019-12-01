#!/bin/bash
## Author: kaiheng
## Description: this file is used to demenstrate the echo command in shell.

#1. show the normal string
echo "show the normal string"
#2. show the escape charater.
echo "show escape character. \"it is a test\""
#3. show the variable
var="I am a variable"
echo "show the variable $var"
read name ## read command can read a line from standard inputs
echo "show a line of standard command: $name"
#4. show the line feed
## If you want to show the line feed, you should give a parameter -e.
echo -e "this is a \n good study"
## \c means suppress the further new line escape character.
echo -e "ok!\c"
echo "this line will follow ok but not a new line"
## using '' can show the original string without escape charater and variable
## using `command` can show the result of command.
echo `ls -la` >> test.txt
