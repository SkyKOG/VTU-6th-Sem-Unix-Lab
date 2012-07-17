#!/bin/sh
x=$1
y=$2

set -- `ls -l $x`
p=$1

set -- `ls -l $y`
q=$1

if [ $p = $q ]
    then 
        echo "Same Persmission of both files $p"
    else
        echo "Diffrent Permissions $x=$p & $y=$q"
fi
