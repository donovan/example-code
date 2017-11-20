#!/usr/bin/perl

use strict;
use warnings;

my $snumber = shift;

my $number = $snumber;

$number = as_money($snumber);

print "$snumber => $number\n";

sub as_money {
    return sprintf('$%.2f', @_);
}
