#!/usr/bin/perl

use strict;
use warnings;

my @numbers = (1..100);

foreach my $number (reverse @numbers) {
    $number *= 10;
    printf("%04d\n", $number);
}


