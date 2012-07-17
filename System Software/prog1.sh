#!/bin/sh
ek=$#

while [ $ek -ge 1 ]
do
    eval echo \$$ek
    ek=`expr $ek - 1`
done
