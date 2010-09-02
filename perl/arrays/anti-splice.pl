#!/usr/bin/perl

# add an element into an array at negative pos

use strict;
use warnings;

my $pos = shift;

my @array = qw( a b c d e f g i );

foreach my $element (@array) {
    print "$element\n";
}
print "---------------------------------------\n";

#splice @array,-$pos,1,('<------', $array[-$pos]);
splice @array,-$pos,0,('<------');

foreach my $element (@array) {
    print "$element\n";
}
