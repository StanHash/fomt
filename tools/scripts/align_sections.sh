#!/bin/bash

for sec in $(sed -n -e 's/^\t\.section \([a-zA-Z0-9_\.]\+\),"ax",%progbits$/\1/p' $1)
do
    echo "	.section \"$sec\"" >> $1
    echo "	.align 2, 0" >> $1
done

echo "	.text" >> $1
echo "	.align 2, 0" >> $1
