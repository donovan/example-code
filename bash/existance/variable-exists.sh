#!/bin/bash

FOO='FOOBAR'

echo "when FOO='FOOBAR'"

if [ -n "${FOO+x}" ]; then
    echo "-n+ says: \$FOO is set to '$FOO'"
else
    echo '-n+ says: $FOO was not set'
fi

if [ -n "${FOO}" ]; then
    echo "-n  says: \$FOO is set to '$FOO'"
else
    echo '-n  says: $FOO was not set or is empty string'
fi

if [ -v FOO ]; then
    echo "-v  says: \$FOO is set to '$FOO'"
else
    echo '-v  says: $FOO was not set'
fi

if [ -z ${FOO+x} ]; then
    echo '-z+ says: $FOO was not set'
else
    echo "-z+ says: \$FOO is set to '$FOO'"
fi

if [ -z ${FOO} ]; then
    echo '-z  says: $FOO was not set or is empty string'
else
    echo "-z  says: \$FOO is set to '$FOO'"
fi

BAR=''

echo ----------------------------
echo "when BAR=''"

if [ -n "${BAR+x}" ]; then
    echo "-n+ says: \$BAR is set to '$BAR'"
else
    echo '-n+ says: $BAR was not set'
fi

if [ -n "${BAR}" ]; then
    echo "-n  says: \$BAR is set to '$BAR'"
else
    echo '-n  says: $BAR was not set or is empty string'
fi

if [ -v BAR ]; then
    echo "-v  says: \$BAR is set to '$BAR'"
else
    echo '-v  says: $BAR was not set'
fi

if [ -z ${BAR+x} ]; then
    echo '-z+ says: $BAR was not set'
else
    echo "-z+ says: \$BAR is set to '$BAR'"
fi

if [ -z ${BAR} ]; then
    echo '-z  says: $BAR was not set or is empty string'
else
    echo "-z  says: \$BAR is set to '$BAR'"
fi

echo ----------------------------
echo "when BAZ is absent"

if [ -n "${BAZ+x}" ]; then
    echo "-n+ says: \$BAZ is set to '$BAZ'"
else
    echo '-n+ says: $BAZ was not set'
fi

if [ -n "${BAZ}" ]; then
    echo "-n  says: \$BAZ is set to '$BAZ'"
else
    echo '-n  says: $BAZ was not set or is empty string'
fi

if [ -v BAZ ]; then
    echo "-v  says: \$BAZ is set to '$BAZ'"
else
    echo '-v  says: $BAZ was not set'
fi

if [ -z ${BAZ+x} ]; then
    echo '-z+ says: $BAZ was not set'
else
    echo "-z+ says: \$BAZ is set to '$BAZ'"
fi

if [ -z ${BAZ} ]; then
    echo '-z  says: $BAZ was not set or is empty string'
else
    echo "-z  says: \$BAZ is set to '$BAZ'"
fi
