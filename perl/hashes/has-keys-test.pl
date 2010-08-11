#!/usr/bin/perl

use strict;
use warnings;

my $data = {};

#my $data = {
#    foo => {},
#    bar => {},
#};

# note the difference between if ($data) and if (%$data)

if ($data) {
    print "data exists\n";
    my $key_count = keys %$data;
    print "key count = $key_count\n";
    if (keys %$data) {
        print "data has keys\n";
    }
    else {
        print "data has no keys\n";
    }
    if (%$data) {
        print "data has keys\n";
    }
    else {
        print "data has no keys\n";
    }
}
else {
    print "data does not exist\n";
}
