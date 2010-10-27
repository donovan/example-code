#!/bin/bash

if [ $# -ne 2 ] ; then
    echo "usage: $0 <word> <file>"
fi

if grep -q $1 $2; then
    echo found the string $1 in file $2
else
    echo did not find the string $1 in file $2
fi
