#!/bin/bash
# author；kaiheng
# Description: this file is used to show how to redirector the content.

# > and >>: > can put the sdout to given file and overwrite the existing content.
# >> file: can add the stdout to the end of the existing content of given file.

# < and << file: < file can read the content in file as the stdin of the command.
# wc -l fileName and wc -l < fileName. 
# command < infile > outfile. we will get the result in outfile by using infile as input.
# for example: wc -l < processControl.sh > wc: we will get a file named wc.

# by default: every Unix/linux command wil open three file:
# 1. standard input file(stdin): the command will read input from stdin. the file descriptor is 0;
# 2. standard output file(stdout): the out put will be written into stdout. file descriptor is 1
# 3. stardard error file(stderr): the error information will be written in stderr. the file descriptor is 2.
# if you want to save the error message into file you can use the command like following command.
# command 2 >> file or command 2 > file. 
# if you want to combine the stdout and stderr together. You can use command >>file 2>&1 or command > file 2>&1
# n >& m: combine m and n together as a single file.

## Here document 
## Here document is a special rediction method, to define a block as the input.
## the format is like:
## comamnd << delimiter
##    document
## delimiter
wc -l <<-EOF
where is the apple
here is the document
EOF
## If you do not want to display the output and error message.
## you can redirection the output and error message to /dev/null file
## the content in his file will be disgarded.
## command > /dev/null 2>&1

