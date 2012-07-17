#!/bin/sh

for username in $*
do
    dirname=`eval echo ~$username`
    echo "Dirname of $username is $dirname"
done

