#!/usr/bin/perl

use warnings;
use strict;
use Time::Local;

my $iso = shift;

if ($iso =~ m{ \A 20\d\d-\d\d-\d\d \z }xms) {
    my ($y, $m, $d) = split/-/, $iso;
    if (timelocal(0,0,12, $d, $m -1 , $y - 1900) <= time) {
        print "time in past\n";
    }
    else {
        print "time in future\n";
    }
}
else {
    print "not an iso date\n";
}
