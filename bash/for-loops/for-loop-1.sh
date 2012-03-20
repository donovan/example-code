#!/bin/bash

for group in sambashare admin lpadmin plugdev cdrom dialout adm
do
    if [ $group = 'admin' ]
    then
        continue; # bash equivalent of perl next
    else
        echo group = $group;
    fi
done
