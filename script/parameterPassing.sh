#!/bin/bash
# author: kaiheng
# url: 

echo "the shell script instance!";
echo "the excute file is: $0";
echo "the first parameter: $1";
echo "the second parameter: $2";
echo "the third parameter: $3";
echo "there are $# parameters are passed";
echo "they are $*";
echo "the process id is $$";
echo "the last back ground id is $!";
echo "another way to show the paramters	$@";
echo "show the option used in current shell: $-";
echo "show the last command quit status: $?";
# there are another way to check the difference between $* and $@
echo "-- the demo to show \$* --";
for i in "$*"; do
    echo $i;
done
echo "how about use \$* instead of \"\$*\"?";
for i in $*; do
    echo $i;
done
echo "--- the demo to show \$@ ---";
for i in "$@"; do
    echo $i;
done
echo "how about do not use \"\$@\" buy just use \$@ instead? "
for i in $@; do
    echo $i;
done
