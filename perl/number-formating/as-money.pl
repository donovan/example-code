#!/usr/bin/perl

use strict;
use warnings;

my $snumber = shift;

my $number = $snumber;

$number = as_money($snumber);

print "$snumber => $number\n";

sub as_money {
    my $value = sprintf('%.2f', @_);
    while ($value =~ s/(.*\d)(\d\d\d)/$1,$2/) {};
    return '$' . $value;
}
