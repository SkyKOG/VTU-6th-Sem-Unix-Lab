#!/bin/sh

cd $1

set -- `ls -lR | grep -v 'd'| sort -n -r -k5`
echo "$9 Has Max Size $5"
