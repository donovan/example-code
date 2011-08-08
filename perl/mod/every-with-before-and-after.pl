#!/usr/bin/perl

use warnings;
use strict;

my $start = 0;
my $every = shift;

for my $num (0..100) {
    print "$num ";
    if ($num >= $start) {
        if (not ($num % $every)) {
            print "$num ***";
        }
        elsif (not (($num +1 ) % $every)) {
            print "$num (before)";
        }
        elsif (not (($num -1) % $every)) {
            print "$num (after)";
        }
    }
    print "\n";
}
