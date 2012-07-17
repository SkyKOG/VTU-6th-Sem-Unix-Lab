#!/bin/sh

stty -echo

echo "Enter Password"
read PW

echo "Re-Enter Password"
read PW1

if [ \"$PW\" != \"$PW1\" ]
then
    echo "Password Mismatch"
else
    echo "Terminal Locked"
    echo "Enter Password to Unlock"
    trap 'echo "Enter Correct Password"' 1 2 3 14 
    read PW1
while [ \"$PW\" != \"$PW1\" ]
do
    read PW1
done
fi

stty echo 
stty sane

