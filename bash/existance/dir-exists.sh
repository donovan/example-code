#!/bin/bash

for DIR in /etc /foobar
do
    if [ -d $DIR ]; then
        echo directory $DIR exists
    else
        echo directory $DIR does not exist
    fi
    if [ ! -d $DIR ]; then
        echo directory $DIR does not exist
    fi
done
