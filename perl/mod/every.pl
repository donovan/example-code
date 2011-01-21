#!/usr/bin/perl

use warnings;
use strict;

my $start = 20;
my $every = shift;

for my $num (1..100) {
    if ($num >= $start) {
        unless ($num % $every) {
            print "$num\n";
        }
    }
}
