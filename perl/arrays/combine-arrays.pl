#!/usr/bin/perl

use strict;
use warnings;

# the result we want is to print 1 to 20
my @array1 = qw(
    1
    2
    3
    4
    5
    6
    7
    8
    9
    10
);

my @array2 = qw(
    11
    12
    13
    14
    15
    16
);

my @array3 = qw(
    17
    18
    19
    20
);

my @combined1 = (@array1, @array2, @array3);

my @combined2 = @array1;

push @combined2, @array2;
push @combined2, @array3;

foreach my $num (@combined1) {
    print "$num\n";
}
print '-' x 20 . "\n";
foreach my $num (@combined2) {
    print "$num\n";
}
