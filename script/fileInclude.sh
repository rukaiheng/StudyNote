#!/bin/bash
# author: kaiheng
# description: script to handle the outside file


#If you want to incldue other files in the shell file
#you can use . filename or source filename

# use . to include sh1.sh file
#. ./sh1.sh

# use source to include the file
source ./sh1.sh
echo "the url of baidu is : $url"
