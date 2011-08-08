#!/usr/bin/perl

use warnings;
use strict;

my @array = qw( 1 2 3 4 5 6 7 8 9 1 1 10 11 12 3 3 3 3 4 4 13 14 14 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 );

my %seen = ();
@array = grep { ! $seen{ $_ }++ } @array;

foreach my $num (@array) {
    print "$num\n";
}
