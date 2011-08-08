#!/usr/bin/perl

use strict;
use warnings;

my @array = qw( 1 2 3 4 5 );

while (1) {
    last unless @array;
    my $num = shift @array;
    print "$num\n";
}

print "we got out the loop\n";
