#!/bin/sh

echo "# to bundle.sh this file"

for i in $*
do 
    echo "echo $i"
    echo "cat > $i<<'end of $i'"
    cat $i
    echo "end of $i"
done
